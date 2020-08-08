import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/model/productModel.dart';
import 'components/itemCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> data;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 88),
              childAspectRatio: 140 / 188,
              children: _itemBuilder(),
            ),

            // App bar
            ClipRect(
              child: Container(
                height: 88,
                width: MediaQuery.of(context).size.width,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 28.0, sigmaY: 28.0),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 16, top: 32, right: 16, bottom: 18),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.75),
                        border: Border(
                            bottom: BorderSide(
                                width: 1, color: Color(0xFFE9E9E9)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Home',
                          style: TextStyle(
                              color: Color(0xFF4C4B4C),
                              fontFamily: 'Montserrat',
                              fontSize: 12),
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

            // TODO: build the action button

            // Nav bar
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRect(
                child: Container(
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 28.0, sigmaY: 28.0),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 16, top: 32, right: 16, bottom: 18),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.75),
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Color(0xFFE9E9E9)))),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _itemBuilder() {
    List<Widget> _list = [];
    data = <ProductModel>[
      ProductModel(
        name: 'Hubot Figure',
        image: 'assets/img/product1.png',
        price: 2000,
        color: Color(0xFFFEFAC4),
      ),
      ProductModel(
        name: 'Github Figure',
        image: 'assets/img/product2.png',
        price: 1400,
        color: Color(0xFFD0FFE1),
      ),
      ProductModel(
        name: 'Hack IT sticker pack',
        image: 'assets/img/product5.png',
        price: 180,
        color: Color(0xFFFFD0EE),
      ),
      ProductModel(
        name: 'CSE Hoodie',
        image: 'assets/img/product3.png',
        price: 2500,
        color: Color(0xFFE8E9FF),
      ),
      ProductModel(
        name: 'CSE Backpack',
        image: 'assets/img/product4.png',
        price: 1800,
        color: Color(0xFFD0EEFF),
      ),
      ProductModel(
        name: 'Flutter water bottle',
        image: 'assets/img/product6.png',
        price: 780,
        color: Color(0xFFDFFEB9),
      ),
      ProductModel(
        name: 'Hubot Figure',
        image: 'assets/img/product1.png',
        price: 2000,
        color: Color(0xFFFED8B9),
      ),
      ProductModel(
        name: 'Github Figure',
        image: 'assets/img/product2.png',
        price: 1400,
        color: Color(0xFFECECEC),
      ),
    ];
    for (int i = 0; i < data.length; i++) {
      _list.add(ItemCard(
        name: data[i].name,
        image: data[i].image,
        price: data[i].price,
        color: data[i].color,
      ));
    }
    return _list;
  }
}
