import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/splash_screen.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Routes.splashScreen,
      routes: <String, WidgetBuilder>{
        Routes.splashScreen: (BuildContext context) => SplashScreen(),
        Routes.homeScreen: (BuildContext context) => HomePage(),
      },
    );
  }
}
