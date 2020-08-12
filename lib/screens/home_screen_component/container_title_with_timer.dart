import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmer_ui_flutter/constants.dart';
import 'dart:async';

class TitleWithTimer extends StatefulWidget {
  @override
  _TitleWithTimerState createState() => _TitleWithTimerState();
}

class _TitleWithTimerState extends State<TitleWithTimer> {
  int _sec = 0;
  int _min = 0;
  int _hour = 5;
  int timeForTimer = 0;
  String timeToDisplay = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timeForTimer = ((_hour * 60 * 60) + (_min * 60) + _sec);
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        if (timeForTimer < 1) {
          t.cancel();
        } else if (timeForTimer < 60) {
          timeToDisplay = timeForTimer.toString();
          timeForTimer--;
        } else if (timeForTimer < 3600) {
          int m = timeForTimer ~/ 60;
          int s = timeForTimer - (60 * m);
          timeToDisplay = m.toString() + ":" + s.toString();
          timeForTimer--;
        } else {
          int h = timeForTimer ~/ 3600;
          int t = timeForTimer - (3600 * h);
          int m = t ~/ 60;
          int s = t - (60 * m);
          timeToDisplay =
              h.toString() + ":" + m.toString() + ":" + s.toString();
          timeForTimer--;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Text(
            'Sale ends in',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 8.0,
            ),
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: kPrimaryColor.withOpacity(0.8),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.5),
              ),
            ),
            child: Text(
              timeToDisplay,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Text(
              'See All',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
