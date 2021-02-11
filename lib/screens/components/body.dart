// This file implements all the slides needed for our product page, from:
// search bar, categories, trending, products, and offers
import 'package:Grocery_App/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:Grocery_App/data/data.dart';
import 'package:Grocery_App/models/trending.dart';
import 'package:Grocery_App/models/product.dart';
import 'package:Grocery_App/screens/components/sub_components/categories.dart';
import 'package:Grocery_App/screens/components/sub_components/productTile.dart';
import 'package:Grocery_App/screens/components/sub_components/trendingTile.dart';

class MyProducts extends StatefulWidget {
  @override
  _MyProductsState createState() => _MyProductsState();
}

class _MyProductsState extends State<MyProducts> {
  List<TrendingProduct> trendingProducts = new List();
  List<Product> products = new List();
  List<Product> vegProducts = new List();
  List<Product> bakeryProducts = new List();
  List<Product> drinkProducts = new List();
  List<TrendingProduct> offers = new List();

  @override
  void initState() {
    super.initState();
    trendingProducts = getTrendingProducts();
    products = getProducts();
    vegProducts = getVegProducts();
    bakeryProducts = getBakeryProducts();
    drinkProducts = getDrinkProducts();
    offers = getOffers();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),

          // search bar
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: Offset(5.0, 5.0),
                  blurRadius: 5.0,
                  color: Colors.black87.withOpacity(0.05),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: textGrey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Search",
                    style: TextStyle(color: textGrey, fontSize: 17),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_voice,
                  color: textGrey,
                ),
              ],
            ),
          ),

          // Top navigation
          Categories(),

          // Here we will add our list views to be displayed

          // Trending products
          Container(
            padding: EdgeInsets.only(left: 22),
            height: 150,
            child: ListView.builder(
                itemCount: trendingProducts.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TrendingTile(
                    price: trendingProducts[index].price,
                    productName: trendingProducts[index].productName,
                    weight: trendingProducts[index].weight,
                    imgURL: trendingProducts[index].imgURL,
                    ratingValue: trendingProducts[index].ratingValue,
                    rating: trendingProducts[index].rating,
                  );
                }),
          ),

          SizedBox(
            height: 40,
          ),

          // Fruits
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Best Selling",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text("This week"),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: themeGreen,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 240,
            padding: EdgeInsets.only(left: 22),
            child: ListView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductTile(
                    price: products[index].price,
                    productName: products[index].productName,
                    rating: products[index].rating,
                    imgURL: products[index].imgURL,
                    ratingValue: products[index].ratingValue,
                  );
                }),
          ),

          // Vegetables
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Vegetables",
                  style: TextStyle(color: Colors.black87, fontSize: 22),
                ),
                SizedBox(
                  width: 12,
                ),
                Text("This week"),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: themeGreen,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 240,
            padding: EdgeInsets.only(left: 22),
            child: ListView.builder(
                itemCount: vegProducts.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductTile(
                    price: vegProducts[index].price,
                    productName: vegProducts[index].productName,
                    rating: vegProducts[index].rating,
                    imgURL: vegProducts[index].imgURL,
                    ratingValue: vegProducts[index].ratingValue,
                  );
                }),
          ),

          // Bakery
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Bakery",
                  style: TextStyle(color: Colors.black87, fontSize: 22),
                ),
                SizedBox(
                  width: 12,
                ),
                Text("This month"),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: themeGreen,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 240,
            padding: EdgeInsets.only(left: 22),
            child: ListView.builder(
                itemCount: bakeryProducts.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductTile(
                    price: bakeryProducts[index].price,
                    productName: bakeryProducts[index].productName,
                    rating: bakeryProducts[index].rating,
                    imgURL: bakeryProducts[index].imgURL,
                    ratingValue: bakeryProducts[index].ratingValue,
                  );
                }),
          ),

          // Drinks
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Drinks",
                  style: TextStyle(color: Colors.black87, fontSize: 22),
                ),
                SizedBox(
                  width: 12,
                ),
                Text("This month"),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: themeGreen,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 240,
            padding: EdgeInsets.only(left: 22),
            child: ListView.builder(
                itemCount: drinkProducts.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductTile(
                    price: drinkProducts[index].price,
                    productName: drinkProducts[index].productName,
                    rating: drinkProducts[index].rating,
                    imgURL: drinkProducts[index].imgURL,
                    ratingValue: drinkProducts[index].ratingValue,
                  );
                }),
          ),

          // Offers
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Offers",
                  style: TextStyle(color: Colors.black87, fontSize: 22),
                ),
                SizedBox(
                  width: 12,
                ),
                Text("Today"),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: themeGreen,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            padding: EdgeInsets.only(left: 22),
            height: 150,
            child: ListView.builder(
                itemCount: offers.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TrendingTile(
                    price: offers[index].price,
                    productName: offers[index].productName,
                    weight: offers[index].weight,
                    imgURL: offers[index].imgURL,
                    ratingValue: offers[index].ratingValue,
                    rating: offers[index].rating,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
