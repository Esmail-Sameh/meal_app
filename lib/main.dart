import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/category_Screen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Category_Screen(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
        hintColor : Colors.amber,
        canvasColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
          ),
          headline1: TextStyle(
             fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
         ),

      ),
    );
  }
}
