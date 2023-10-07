import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/cubit/cubit.dart';
import 'package:meal_app/cubit/states.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/category_screen.dart';
import 'package:meal_app/screens/favorite_screen.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MealCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          hintColor : Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
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
          '/': (context) => TabsScreen(),
          'category_screen': (context) => Category_Screen(),
          'favorite_screen': (context) => FavoriteScreen(),
          'category_meal_screen': (context) => Category_Meals_Screen(),
          'meal_detail_screen' : (context) => MealDetail(),
        },
      ),
      
    );
  }
}
