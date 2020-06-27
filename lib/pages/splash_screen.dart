import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/constant.dart';
import '../utils/routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var timer;

  _startTimer() {
    timer = Timer(Duration(seconds: 3), () {
      Navigator.of(context).popAndPushNamed(Routes.homeScreen);
    });
  }

  @override
  void initState() {
    super.initState();
    print('init state of splash');
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose state of splash');
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.details,
              size: 100,
              color: Colors.deepOrange,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '${Constant.splashScreenMessage}',
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
