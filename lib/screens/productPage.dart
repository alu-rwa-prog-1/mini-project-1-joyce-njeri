// this file builds the basic structure of our product page, from:
// appbar, humburger menu, and bottom navigation
import 'package:flutter/material.dart';
import 'package:Grocery_App/screens/components/body.dart';
import 'package:Grocery_App/screens/homePage.dart';
import 'package:Grocery_App/resources/colors.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: NavDrawer(),
      body: MyProducts(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Grocerie Bar'),
      centerTitle: true,
      backgroundColor: themeGreen,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart),
          iconSize: 25,
          onPressed: () {},
        ),
      ],
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: _selectedIndex,
      selectedItemColor: themeGreen,
      unselectedItemColor: themeGreen,
      iconSize: 25,
      onTap: _onItemTapped,
      elevation: 5,
    );
  }
}

// use drawer() to implement hamburger menu
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: themeGreen,
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.all(1),
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(5.0),
                    bottomRight: const Radius.circular(5.0),
                  ),
                  color: Colors.white,
                ),
                accountName: Text(
                  "Joyce Njeri Miiri",
                  style: TextStyle(
                    color: themeGreen,
                  ),
                ),
                accountEmail: Text(
                  "jmiiri17@alustudent.com",
                  style: TextStyle(color: themeGreen),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar.webp"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: themeYellow,
                    child: Text(
                      "A",
                      style: TextStyle(color: themeGreen, fontSize: 25),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: themeYellow,
                    child: Text(
                      "B",
                      style: TextStyle(color: themeGreen, fontSize: 25),
                    ),
                  )
                ]),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.info_rounded,
                color: themeYellow,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LandingPage()));
              },
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Products',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.info_rounded,
                color: themeYellow,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductPage()));
              },
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 0.0),
              leading: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Favorites',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 0.0),
              leading: Icon(
                Icons.verified_user_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 15.0, 0.0),
              leading: Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.border_color,
                color: Colors.white,
              ),
              title: Text(
                'Feedback',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.info_rounded,
                color: themeYellow,
              ),
            ),
            Divider(
              indent: 80.0,
              endIndent: 30.0,
              color: Colors.white,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 30.0, 0.0),
              leading: Icon(
                Icons.exit_to_app_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.info_rounded,
                color: themeYellow,
              ),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LandingPage()))
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(500),
              child: InkWell(
                borderRadius: BorderRadius.circular(500),
                splashColor: themeGreen,
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: themeYellow,
                  child: Icon(Icons.arrow_back, color: themeGreen),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
