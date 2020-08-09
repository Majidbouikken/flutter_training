import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/controllers/productController.dart';
import 'package:flutter_app/model/productModel.dart';
import 'components/itemCard.dart';
import 'addProductPage.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //makeGetRequestProductList();
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AddProductPage(),
          ));
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            FutureBuilder(
              future: makeGetRequestProductList(),
              builder: (context, snapshot) {
                return snapshot.data != null
                    ? GridView.count(
                        crossAxisCount: 2,
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 88),
                        childAspectRatio: 140 / 188,
                        children: _itemBuilder(snapshot.data),
                      )
                    : Center(child: CircularProgressIndicator());
              },
            ),

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

  List<Widget> _itemBuilder(List<ProductModel> data) {
    List<Widget> _list = [];

    for (int i = 0; i < data.length; i++) {
      _list.add(ItemCard(
        name: data[i].name,
        image: data[i].image,
        price: data[i].price,
        color: Color(int.parse(data[i].color)),
      ));
    }
    return _list;
  }
}
