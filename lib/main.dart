import 'package:flutter/material.dart';
import 'package:flutter_app/ui/homePage.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomePage(),
  ));
}