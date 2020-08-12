import 'package:flutter/material.dart';
import 'package:farmer_ui_flutter/constants.dart';
import 'package:farmer_ui_flutter/screens/home_screen_component/header.dart';
import 'package:farmer_ui_flutter/screens/home_screen_component/container_title_with_timer.dart';
import 'package:farmer_ui_flutter/screens/home_screen_component/sliding_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderBar(
              size: size,
            ),
            TitleWithTimer(),
            CustomSlidingContainer(),
          ],
        ),
      ),
    );
  }
}
//      backgroundColor: Colors.white,
//      body: SingleChildScrollView(
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Container(
//              height: 300,
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  image: AssetImage('images/wheat-field.jpg'),
//                  fit: BoxFit.cover,
//                ),
//                borderRadius: BorderRadius.only(
//                  bottomRight: Radius.circular(40.0),
//                ),
//              ),
//              child: Container(
//                decoration: BoxDecoration(
//                  gradient: LinearGradient(
//                    begin: Alignment.topRight,
//                    colors: [
//                      Colors.blue[300].withOpacity(.3),
//                      Colors.yellow[300].withOpacity(.3),
//                    ],
//                  ),
//                ),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.all(12.0),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Text(
//                            'Hi RKO',
//                            style: TextStyle(
//                              fontSize: 30.0,
//                              fontWeight: FontWeight.bold,
//                              color: Colors.black87,
//                            ),
//                          ),
//                          CircleAvatar(
//                            radius: 25.0,
//                            backgroundColor: Colors.white,
//                            child: Icon(
//                              Icons.person_outline,
//                              size: 35.0,
//                              color: Colors.green,
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                    SizedBox(
//                      height: 15.0,
//                    ),
//                    Container(
//                      padding: EdgeInsets.symmetric(vertical: 3),
//                      margin: EdgeInsets.symmetric(horizontal: 40),
//                      height: 50.0,
//                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(50.0),
//                        color: Colors.white,
//                      ),
//                      child: TextField(
//                        decoration: InputDecoration(
//                          border: InputBorder.none,
//                          prefixIcon: Icon(
//                            Icons.search,
//                            color: Colors.green,
//                          ),
//                          hintText: 'Search for vegetables, fruits & more ...',
//                          hintStyle: TextStyle(
//                            color: Colors.grey.shade700,
//                            fontSize: 16,
//                          ),
//                        ),
//                      ),
//                    ),
//                    SizedBox(
//                      height: 30.0,
//                    ),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: <Widget>[
//                        CategoryContainer(
//                          imgName: 'brocoli.png',
//                          contName: 'Vegetables',
//                        ),
//                        CategoryContainer(
//                          imgName: 'apple.png',
//                          contName: 'Fruits',
//                        ),
//                        CategoryContainer(
//                          imgName: 'corn.png',
//                          contName: 'Crops',
//                        ),
//                        CategoryContainer(
//                          imgName: 'square-icon.png',
//                          contName: 'More',
//                        ),
//                      ],
//                    ),
//                    SizedBox(
//                      height: 20.0,
//                    ),
//                  ],
//                ),
//              ),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            Container(
//              child: Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 15),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: <Widget>[
//                        Text(
//                          'Sale ends in',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.w600,
//                            color: Colors.grey[800],
//                            textBaseline: TextBaseline.alphabetic,
//                          ),
//                        ),
//                        InkWell(
//                          child: Text(
//                            "View All",
//                            style: TextStyle(
//                              fontSize: 18,
//                              fontWeight: FontWeight.w500,
//                              color: Colors.green,
//                              textBaseline: TextBaseline.alphabetic,
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                    SizedBox(
//                      height: 15.0,
//                    ),
//                    Container(
//                      height: 200.0,
//                      child: ListView(
//                        scrollDirection: Axis.horizontal,
//                        children: <Widget>[
//                          scrollItem(
//                            image: 'images/items/apples-red.jpg',
//                            discount: '25',
//                          ),
//                          scrollItem(
//                            image: 'images/items/onions.jpg',
//                            discount: '50',
//                          ),
//                          scrollItem(
//                            image: 'images/items/potatoes.jpg',
//                            discount: '30',
//                          ),
//                          scrollItem(
//                            image: 'images/items/basmati-rice.jpg',
//                            discount: '20',
//                          ),
//                        ],
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//Widget scrollItem({image, discount}) {
//  return AspectRatio(
//    aspectRatio: 1 / 1,
//    child: Container(
//      margin: EdgeInsets.only(right: 15),
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(20),
//        image: DecorationImage(
//          image: AssetImage(image),
//          fit: BoxFit.cover,
//        ),
//      ),
//      child: Stack(
//        children: <Widget>[
//          Container(
//            padding: EdgeInsets.all(20),
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(20.0),
//              gradient: LinearGradient(
//                begin: Alignment.bottomRight,
//                colors: [
//                  Colors.black.withOpacity(.2),
//                  Colors.black.withOpacity(.2),
//                ],
//              ),
//            ),
//          ),
//          Container(
//            height: 30.0,
//            width: 60.0,
//            decoration: BoxDecoration(
//              color: Colors.green,
//              borderRadius: BorderRadius.only(
//                topLeft: Radius.circular(20.0),
//                bottomRight: Radius.circular(20.0),
//              ),
//            ),
//            child: Padding(
//              padding: const EdgeInsets.only(
//                top: 8.0,
//              ),
//              child: Text(
//                '$discount% Off',
//                textAlign: TextAlign.center,
//                style: TextStyle(
//                  color: Colors.white,
//                  fontSize: 12.0,
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//    ),
//  );
//}
//
//class CategoryContainer extends StatelessWidget {
//  CategoryContainer({this.imgName, this.contName});
//  final String imgName;
//  final String contName;
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        Container(
//          height: 60,
//          width: 60,
//          child: FlatButton(
//            shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(15.0),
//            ),
//            color: Colors.white,
//            padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
//            onPressed: () {},
//            child: Image.asset(
//              'images/$imgName',
//              height: 40.0,
//              width: 40.0,
//            ),
//          ),
//        ),
//        SizedBox(
//          height: 5.0,
//        ),
//        Text(
//          contName,
//          style: TextStyle(
//            color: Colors.black87,
//            fontWeight: FontWeight.w600,
//            fontSize: 18.0,
//          ),
//        ),
//      ],
//    );
//  }
//}
