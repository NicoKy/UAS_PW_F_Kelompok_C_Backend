<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Validator;
use App\Models\ShoppingCart;
use DB;

class ShoppingCartController extends Controller
{
    public function index()
    {
        $shoppingcart = ShoppingCart::all();
        $total = ShoppingCart::sum('subtotal');

        if (count($shoppingcart) > 0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $shoppingcart,
                'total' => $total
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }

    public function show($id)
    {
        $shoppingcart = Shoppingcart::find($id);

        if (count($shoppingcart) > 0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $shoppingcart,
                'total' => $total
            ], 200);
        }

        return response([
            'message' => 'Shopping Cart Not Found',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData = $request->all();
        $validate = Validator::make($storeData, [
            'name' => 'required|max:60',
            'price' => 'required|numeric',
            'image' => 'required',
            'quantity' => 'required',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $storeData['subtotal'] = $storeData['price'] * $storeData['quantity'];
        $shoppingcart = ShoppingCart::create($storeData);
        return response([
            'message' => 'Add To Cart Success',
            'data' => $shoppingcart
        ], 200);
    }

    public function destroy()
    {
        $shoppingcart = ShoppingCart::all();
        if (count($shoppingcart) < 1) {
            return response([
                'message' => 'Shopping Cart Empty',
            ], 404);
        }

        ShoppingCart::truncate();
        return response([
            'message' => 'Shopping Cart Cleared',
        ], 200);
    }

    public function update(Request $request, $id)
    {
        $shoppingcart = ShoppingCart::find($id);
        if(is_null($product)){
            return response([
                'message' => 'Product Not Found',
                'data' => null
            ], 404);
        }

        $updateData = $request->all();
        $validate = Validator::make($updateData, [
            'name' => 'required|max:60',
            'price' => 'required|numeric',
            'image' => 'required',
            'quantity' => 'required',
        ]);


        if($validate->fails())
            return response(['message' => $validate ->errors()], 400);

        $shoppingcart->name = $updateData['name'];
        $shoppingcart->price = $updateData['price'];
        $shoppingcart->image = $updateData['image'];
        $shoppingcart->quantity = $updateData['quantity'];
        $shoppingcart->subtotal = $updateData['price'] * $updateData['quantity'];

        if($product->save()){
            return response ([
                'message' => 'Update Product Success',
                'data' => $product
            ], 200);
        }

        return response([
            'message' => 'Update Product Failed',
            'data' => null,
        ], 400);
    }
}
