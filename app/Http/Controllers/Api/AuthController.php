<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Validator;

class AuthController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $registrationData = $request->all();
        $validate = Validator::make($registrationData, [
            'name' => 'required|max:60',
            'email' => 'required|email:rfc,dns|unique:users',
            'password' => 'required',
            'address' => 'required'
        ]);
        if($validate->fails())
            return response(['message' => $validate->errors()], 400);


        $registrationData['password'] = bcrypt($request->password);
        $user = User::create($registrationData);
        $user->sendEmailVerificationNotification();
        return response([
            'message' => 'Register Success',
            'user' => $user
        ], 200);
    }

    public function login(Request $request)
    {
        $loginData = $request->all();
        $validate = Validator::make($loginData, [
            'email' => 'required|email:rfc,dns',
            'password' => 'required'
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        if(!Auth::attempt($loginData))
            return response(['message' => 'Invalid Credentials'], 401);

        $user = Auth::user();

        if($user['email_verified_at']==NULL)
            return response(['message' => 'Email Is Not Verified'], 401);
        else
            $token = $user->createToken('Authentication Token')->accessToken;

        return response([
            'message' => 'Authenticated',
            'user' => $user,
            'is_admin' => $user['is_admin'],
            'token_type' => 'Bearer',
            'access_token' => $token
        ]);
    }
}
