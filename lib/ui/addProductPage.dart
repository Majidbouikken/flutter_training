import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/controllers/addProductController.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String name = "";
  int price = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 64.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: Theme.of(context).textTheme.bodyText1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "name of the product",
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                  ),
                  onChanged: (input) {
                    setState(() {
                      name = input;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 64.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: Theme.of(context).textTheme.bodyText1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "price",
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                  ),
                  onChanged: (input) {
                    setState(() {
                      price = int.parse(input);
                    });
                  },
                ),
              ),
              SizedBox(
                height: 36,
              ),
              FlatButton(
                onPressed: () {
                  makePostProduct(name, price);
                },
                child: Container(
                  height: 52.00,
                  width: MediaQuery.of(context).size.width - 160,
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(82.00),
                  ),
                  child: Center(
                    child: new Text(
                      "ENVOYER",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                      textScaleFactor: 1.4,
                    ),
                  ),
                ),
              )
            ],
          ),

          //--------------------
          ClipRect(
            child: Container(
              height: 88,
              width: MediaQuery.of(context).size.width,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 28.0, sigmaY: 28.0),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 32, right: 16, bottom: 18),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.75),
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0xFFE9E9E9)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Home',
                          style: TextStyle(
                              color: Color(0xFF4C4B4C),
                              fontFamily: 'Montserrat',
                              fontSize: 12),
                        ),
                      ),
                      Image.asset('assets/img/logo.png'),
                      Text(
                        'Wallet :\nDZD 7000',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color(0xFF4C4B4C),
                            fontFamily: 'Montserrat',
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
