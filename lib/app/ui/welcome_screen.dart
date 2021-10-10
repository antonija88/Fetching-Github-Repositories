import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ingemark_app/utility/constants.dart';
import 'package:ingemark_app/utility/size_config.dart';
import 'package:ingemark_app/app/ui/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routName = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // Future.delayed(Duration(seconds: 5), () {
    //   Navigator.pushReplacementNamed(context, Home.routName);
    // });
    startTime();
    super.initState();
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(context, Home.routName);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double? sizeH = SizeConfig.safeBlockVertical;
    double? sizeW = SizeConfig.safeBlockHorizontal;

    return Scaffold(
      backgroundColor: kMainColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: sizeH! * 15,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Ingemark App",
                    style:
                        TextStyle(color: Colors.white54, fontSize: sizeH * 5),
                  ),
                  SizedBox(height: sizeH * 10),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
