// this file builds the landing page of the app
import 'package:Grocery_App/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:Grocery_App/screens/productPage.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Text(
                "Grocerie Bar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: themeGreen,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Shop everything you need without the trip to the supermarket!",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/landing.jpg"),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductPage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width - 70,
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                themeGreen,
                                themeGreen.withOpacity(1),
                              ],
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 15.0,
                                color: themeGreen.withOpacity(1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Get Started".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Learn More",
                      style: TextStyle(color: themeGreen, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
