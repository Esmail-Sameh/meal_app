import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/category_screen.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        hintColor : Colors.amber,
        canvasColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          elevation: 0
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

      ),
      routes: {
        '/': (context) => Category_Screen(),
        'category_meal_screen': (context) => Category_Meals_Screen(),
        'meal_detail' : (context) => MealDetail(),
      },
    );
  }
}
