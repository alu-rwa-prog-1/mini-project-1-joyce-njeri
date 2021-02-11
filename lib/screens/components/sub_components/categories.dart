// This file creates the app's top navigation menu
import 'package:flutter/material.dart';
import 'package:Grocery_App/resources/colors.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // create list of categories to scroll to the right
  List<String> categories = ["Fruits", "Veg", "Bakery", "Drinks", "Offers"];

  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // highlight to show users which page they are currently on
                color: selectedIndex == index ? themeGreen : textGrey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 30,
              // highlight to show users which page they are currently on
              color: selectedIndex == index ? themeGreen : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
