import 'dart:io';

import 'package:flutter_app/model/productModel.dart';
import 'package:http/http.dart';
import 'dart:convert';

Map<String, String> headers = {
  HttpHeaders.contentTypeHeader: "application/json", // or whatever
  HttpHeaders.acceptHeader: "application/json",
};

String domainName = "https://flutterworkshop-api-cse.herokuapp.com";


Future<Response> makePostProduct(
  String name,
  int price,
) async {

  ProductModel product = ProductModel(
      name: name,
      price: price,
      image:
          "https://github.com/Majidbouikken/flutter_training/blob/master/assets/img/product1.png?raw=true",
      color: "0xFFFFD0EE");
 
  print(jsonEncode(product.toJson()));

  Response response = await post(domainName + "/products/create",
      body: jsonEncode(product.toJson()), headers: headers);

      
  print(response.body);
  return response;
}
