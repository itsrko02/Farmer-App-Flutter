import 'package:flutter/material.dart';
import 'package:farmer_ui_flutter/components/bottom_navbar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animationRight, animationLeft;
  Animation<Offset> offset1, offset2;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animationRight = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );

    animationLeft = Tween<double>(begin: -1, end: 0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );

    offset1 =
        Tween<Offset>(begin: Offset(0.0, -10.0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    offset2 = Tween<Offset>(begin: Offset(0.0, 10.0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    animationController.addListener(() {
      setState(() {
        //
      });
    });
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.lightGreen,
                        Colors.green,
                        Colors.lightGreen,
                        Colors.lightGreenAccent,
                      ],
                    ),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SlideTransition(
                            position: offset1,
                            child: Text(
                              'सुस्वागतम्',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          SlideTransition(
                            position: offset1,
                            child: Text(
                              'कृपया अपने 10 अंको का फोन नम्बर डाल कर प्रवेष करे।',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SlideTransition(
                        position: offset2,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/indian-farmer.png'),
                            ),
                          ),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Transform(
                              transform: Matrix4.translationValues(
                                  animationLeft.value * width, 0.0, 0.0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                cursorColor: Colors.green,
                                onChanged: (value) {},
                                validator: (validate) =>
                                    validate.length == 0 ? '*Required' : null,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(60.0),
                                  ),
                                  hintText: 'Mobile No.',
                                  hintStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 15.0,
                                  ),
                                  prefix: Text(
                                    '+91 ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Transform(
                                transform: Matrix4.translationValues(
                                    animationRight.value * width, 0.0, 0.0),
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 60.0,
                                  elevation: 10.0,
                                  color: Colors.deepOrange,
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      print("Validation Success");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => BottomNavBar(),
                                        ),
                                      );
                                    } else {
                                      print("Validation Error");
                                    }
                                  },
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white70,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
