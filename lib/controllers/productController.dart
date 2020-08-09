import 'dart:io';

import 'package:flutter_app/model/productModel.dart';
import 'package:http/http.dart';
import 'dart:convert';

Map<String, String> headers = {
  HttpHeaders.contentTypeHeader: "application/json", // or whatever
  HttpHeaders.acceptHeader: "application/json",
};

Future<List<ProductModel>> makeGetRequestProductList() async {
  // make GET request
  Response response = await get(
      "https://flutterworkshop-api-cse.herokuapp.com/products/all",
      headers: headers);

  int statusCode = response.statusCode;

  List<ProductModel> productList;
  var data = json.decode(response.body);

  var rest = data as List;

  productList =
      rest.map<ProductModel>((json) => ProductModel.fromJson(json)).toList();

  return productList;
}
