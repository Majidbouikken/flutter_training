import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/model/product.dart';
import 'components/itemCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> data;

  @override
  void initState() {
    super.initState();
    data = <Product>[
      Product(
        'Hubot Figure',
        'assets/img/product1.png',
        2000,
        Color(0xFFFEFAC4),
      ),
      Product(
        'Github Figure',
        'assets/img/product2.png',
        1400,
        Color(0xFFD0FFE1),
      ),
      Product(
        'Hack IT sticker pack',
        'assets/img/product5.png',
        180,
        Color(0xFFFFD0EE),
      ),
      Product(
        'CSE Hoodie',
        'assets/img/product3.png',
        2500,
        Color(0xFFD0EEFF),
      ),
      Product(
        'CSE Backpack',
        'assets/img/product4.png',
        1800,
        Color(0xFFD0EEFF),
      ),
      Product(
        'Flutter water bottle',
        'assets/img/product6.png',
        780,
        Color(0xFFDFFEB9),
      ),
      Product(
        'Hubot Figure',
        'assets/img/product1.png',
        2000,
        Color(0xFFECECEC),
      ),
      Product(
        'Github Figure',
        'assets/img/product2.png',
        1400,
        Color(0xFFD0FFE1),
      ),
    ];
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
    data = <Product>[
      Product(
        'Hubot Figure',
        'assets/img/product1.png',
        2000,
        Color(0xFFFEFAC4),
      ),
      Product(
        'Github Figure',
        'assets/img/product2.png',
        1400,
        Color(0xFFD0FFE1),
      ),
      Product(
        'Hack IT sticker pack',
        'assets/img/product5.png',
        180,
        Color(0xFFFFD0EE),
      ),
      Product(
        'CSE Hoodie',
        'assets/img/product3.png',
        2500,
        Color(0xFFE8E9FF),
      ),
      Product(
        'CSE Backpack',
        'assets/img/product4.png',
        1800,
        Color(0xFFD0EEFF),
      ),
      Product(
        'Flutter water bottle',
        'assets/img/product6.png',
        780,
        Color(0xFFDFFEB9),
      ),
      Product(
        'Hubot Figure',
        'assets/img/product1.png',
        2000,
        Color(0xFFFED8B9),
      ),
      Product(
        'Github Figure',
        'assets/img/product2.png',
        1400,
        Color(0xFFECECEC),
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
