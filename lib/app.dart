import 'package:aeo_newcarwale/constants/Constants.dart';
import 'package:aeo_newcarwale/screen/aeo_carwale.dart';
import 'package:aeo_newcarwale/screen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
     // systemNavigationBarColor: Colors.blue[800],
      //   statusBarColor:Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      title: 'AEO UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      routes: <String, WidgetBuilder> {
        Constants.SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),
        Constants.AEO_CARWALE: (BuildContext context) => AeoCarWale(),
      },
      initialRoute: Constants.SPLASH_SCREEN,
    );
  }
}

