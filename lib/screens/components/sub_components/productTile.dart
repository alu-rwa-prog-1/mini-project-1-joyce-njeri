// This file builds our cards display of products
import 'package:flutter/material.dart';
import 'package:Grocery_App/resources/colors.dart';
import 'package:Grocery_App/screens/components/sub_components/trendingTile.dart';

class ProductTile extends StatelessWidget {
  // vars
  final int price, rating, ratingValue;
  final String productName, imgURL;
  // Constructor
  ProductTile(
      {this.price,
      this.imgURL,
      this.rating,
      this.productName,
      this.ratingValue});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                // Image
                Container(
                  height: 150,
                  width: 140,
                  color: Colors.white,
                  child: Image.asset(
                    imgURL,
                    fit: BoxFit.contain,
                  ),
                ),

                // Price
                Container(
                  height: 25,
                  width: 45,
                  margin: EdgeInsets.only(left: 8, top: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: LinearGradient(colors: [
                        const Color(0xff44d7a8),
                        const Color(0xff57a6a2).withOpacity(0.5)
                      ])),
                  child: Text(
                    "\$$price",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          // Product name
          Text(productName),
          SizedBox(
            height: 8,
          ),
          Row(
            children: <Widget>[
              // Rating stars and value
              StarRating(
                rating: rating,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "($ratingValue)",
                style: TextStyle(color: textGrey, fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
