import 'package:farmer_ui_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:farmer_ui_flutter/constants.dart';

class CustomAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  kPrimaryColor,
                  Colors.green,
                ],
              ),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.all(
                      Radius.circular(55.0),
                    ),
                    elevation: 10.0,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image.asset(
                        'images/indian-farmer.png',
                        width: 80.0,
                        height: 80.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'RKO',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomListTile(
            icon: Icons.home,
            iconText: 'Home',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          CustomListTile(
            icon: Icons.shopping_cart,
            iconText: 'My Orders',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.list,
            iconText: 'All Categories',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.credit_card,
            iconText: 'Add Payment Info',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.language,
            iconText: 'Change Language',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.info,
            iconText: 'About',
            onTap: () {
//              Navigator.of(context).push(
//                MaterialPageRoute(
//                  builder: (context) => InfoPage(),
//                ),
//              );
            },
          ),
          CustomListTile(
            icon: Icons.power_settings_new,
            iconText: 'Log Out',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String iconText;
  final IconData icon;
  final Function onTap;

  CustomListTile({this.icon, this.iconText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
        ),
        child: InkWell(
          splashColor: kPrimaryColor,
          onTap: onTap,
          child: Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      icon,
                      color: Color(0xff757575),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        iconText,
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_right,
                  color: Color(0xff757575),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
