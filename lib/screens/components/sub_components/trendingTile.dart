// This file creates our trending display tile
import 'package:flutter/material.dart';
import 'package:Grocery_App/resources/colors.dart';

class TrendingTile extends StatelessWidget {
  // vars
  final String productName, weight, imgURL;
  final int ratingValue, price, rating;
  // constructor
  TrendingTile(
      {this.productName,
      this.weight,
      this.imgURL,
      this.rating,
      this.ratingValue,
      this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      margin: EdgeInsets.only(right: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 15.0,
            color: Colors.black87.withOpacity(0.05),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 105,
                  height: 150,
                  // Image
                  child: Image.asset(
                    imgURL,
                    fit: BoxFit.contain,
                  ),
                ),
                // Price
                Container(
                  height: 25,
                  width: 50,
                  margin: EdgeInsets.only(left: 5, top: 5),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Product name
                Text(
                  productName,
                  style: TextStyle(color: Colors.black87, fontSize: 19),
                ),
                // Weight
                Text(
                  weight,
                  style: TextStyle(color: textGrey),
                ),
                SizedBox(
                  height: 8,
                ),
                // ratings
                Row(
                  children: <Widget>[
                    StarRating(
                      rating: rating,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "($ratingValue)",
                      style: TextStyle(color: textGrey, fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                // Add to cart action
                Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff44d7a8),
                        const Color(0xff008080).withOpacity(0.5)
                      ],
                    ),
                  ),
                  child: Text(
                    "Add to cart",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// this method checks star rating depending on the rating value given
class StarRating extends StatelessWidget {
  final int rating;
  StarRating({this.rating});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          rating >= 1 ? "assets/star.png" : "assets/stargrey.png",
          width: 13,
          height: 13,
        ),
        SizedBox(
          width: 3,
        ),
        Image.asset(
          rating >= 2 ? "assets/star.png" : "assets/stargrey.png",
          width: 13,
          height: 13,
        ),
        SizedBox(
          width: 3,
        ),
        Image.asset(
          rating >= 3 ? "assets/star.png" : "assets/stargrey.png",
          width: 13,
          height: 13,
        ),
        SizedBox(
          width: 3,
        ),
        Image.asset(
          rating >= 4 ? "assets/star.png" : "assets/stargrey.png",
          width: 13,
          height: 13,
        ),
        SizedBox(
          width: 3,
        ),
        Image.asset(
          rating >= 5 ? "assets/star.png" : "assets/stargrey.png",
          width: 13,
          height: 13,
        ),
      ],
    );
  }
}
