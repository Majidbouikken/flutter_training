import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final String image;
  final int price;
  final Color color;

  const ItemCard({
    this.name,
    this.image,
    this.price,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Container(
        decoration: BoxDecoration(
            color: this.color, borderRadius: BorderRadius.circular(12)),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 8,
                ),
                Image.network(this.image),
                Text(
                  this.name,
                  style: TextStyle(
                      color: Color(0xFF4C4B4C),
                      fontFamily: 'Montserrat',
                      fontSize: 10),
                ),
                Text(
                  'DZD ' + this.price.toString(),
                  style: TextStyle(
                      color: Color(0xFF4C4B4C),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 12),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Color(0xFF4C4B4C),
                  size: 28,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
