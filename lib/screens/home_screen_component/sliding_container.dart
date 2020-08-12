import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmer_ui_flutter/constants.dart';

class CustomSlidingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CustomCard(
            imageName: 'images/items/apples-red.jpg',
            productTitle: 'Apples',
            companyName: 'Guru Fresh',
            weight: '1 KG',
            priceBefore: '80',
            priceAfter: '40',
            discount: '50',
            onTap: () {},
          ),
          CustomCard(
            imageName: 'images/items/onions.jpg',
            productTitle: 'Onions',
            companyName: 'Local',
            weight: '2 KG',
            priceBefore: '60',
            priceAfter: '30',
            discount: '50',
            onTap: () {},
          ),
          CustomCard(
            imageName: 'images/items/potatoes.jpg',
            productTitle: 'Potatoes',
            companyName: 'Local',
            weight: '5 KG',
            priceBefore: '200',
            priceAfter: '150',
            discount: '25',
            onTap: () {},
          ),
          CustomCard(
            imageName: 'images/items/basmati-rice.jpg',
            productTitle: 'Basmati',
            companyName: 'Kohinoor',
            weight: '5 KG',
            priceBefore: '400',
            priceAfter: '280',
            discount: '30',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({
    this.imageName,
    this.onTap,
    this.weight,
    this.priceAfter,
    this.priceBefore,
    this.productTitle,
    this.companyName,
    this.discount,
  });

  final String imageName,
      productTitle,
      weight,
      priceBefore,
      priceAfter,
      companyName,
      discount;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset(imageName),
              ),
              Container(
                height: 25,
                width: 55,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.5),
                  child: Text(
                    '$discount% Off',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30.0,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$productTitle\n".toUpperCase(),
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "$weight",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: kPrimaryColor.withOpacity(0.09),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '$companyName',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '₹$priceBefore',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 3.0,
                              ),
                            ),
                            TextSpan(
                              text: ' ₹$priceAfter',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: kPrimaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
