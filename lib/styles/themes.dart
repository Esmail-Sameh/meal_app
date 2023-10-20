
import 'package:flutter/material.dart';
class themes{

  static ThemeData lightTheme =ThemeData(
    primarySwatch: Colors.pink,
    hintColor: Colors.amber,
    canvasColor: Color.fromRGBO(255, 254, 229, 1),
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: 'Raleway',
      ),
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 20,
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline1: TextStyle(
        fontSize: 20,
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );

}
