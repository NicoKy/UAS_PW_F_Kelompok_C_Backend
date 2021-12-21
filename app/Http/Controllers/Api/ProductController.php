<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Validator;
use App\Models\Product;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();

        if (count($products) > 0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $products
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }

    public function show($id)
    {
        $product = Product::find($id);

        if (!is_null($product)) {
            return response([
                'message' => 'Retrieve Product Success',
                'data' => $product
            ], 200);
        }

        return response([
            'message' => 'Product Not Found',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData = $request->all();
        $validate = Validator::make($storeData, [
            'product_name' => 'required|max:60',
            'product_price' => 'required|numeric',
            'product_description' => 'required',
            'product_category' => 'required',
            'product_image' => 'required',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $product = Product::create($storeData);
        return response([
            'message' => 'Add Product Success',
            'data' => $product
        ], 200);
    }

    public function destroy($id)
    {
        $product = Product::find($id);

        if(is_null($product)){
            return response([
                'message' => 'Product Not Found',
                'data' => null
            ], 404);
        }

        if($product->delete()){
            return response([
                'message' => 'Delete Product Success',
                'data' => $product
            ], 200);
        }

        return response([
            'message' => 'Delete Product Failed',
            'data' => null,
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        if(is_null($product)){
            return response([
                'message' => 'Product Not Found',
                'data' => null
            ], 404);
        }

        $updateData = $request->all();
        $validate = Validator::make($updateData, [
            'product_name' => 'required|max:60',
            'product_price' => 'required|numeric',
            'product_description' => 'required',
            'product_category' => 'required',
            'product_image' => 'required',
        ]);


        if($validate->fails())
            return response(['message' => $validate ->errors()], 400);

        $product->product_name = $updateData['product_name'];
        $product->product_price = $updateData['product_price'];
        $product->product_description = $updateData['product_description'];
        $product->product_category = $updateData['product_category'];
        $product->product_image = $updateData['product_image'];

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
