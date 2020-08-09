import 'package:flutter/material.dart';
import 'dart:convert';

class ProductModel {
  String name;
  String image;
  int price;
  String color;

  ProductModel({this.name, this.image, this.price, this.color});

  //let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to sub­classes.

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        name: json['name'],
        image: json['image'],
        price: json['price'],
        color: json['color']);
  }

  Map<String, dynamic> toJson() =>
      {'name': name, 'image': image, 'price': price, 'color': color};

  @override
  String toString() {
    return jsonEncode(this.toJson().toString());
  }
}
