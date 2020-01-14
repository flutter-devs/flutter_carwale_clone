import 'package:aeo_newcarwale/aeo_carwale.dart';
import 'package:aeo_newcarwale/aeobackup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.



  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarColor: Colors.white,
      statusBarColor:Color.fromARGB(255,30, 54, 76), //or set color with: Color(0xFF0000FF)
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AeoCarWale(),
    );
  }
}

