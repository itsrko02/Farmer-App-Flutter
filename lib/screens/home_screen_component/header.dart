import 'package:flutter/material.dart';
import 'package:farmer_ui_flutter/constants.dart';

class HeaderBar extends StatelessWidget {
  HeaderBar({@required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding + 20,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/wheat-field.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi RKO!',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "Search for vegetables, fruits & more...",
                  hintStyle: TextStyle(
                    color: kPrimaryColor.withOpacity(0.8),
                    fontSize: 17,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
