import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/cubit/cubit.dart';
import 'package:meal_app/cubit/observer.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/category_screen.dart';
import 'package:meal_app/screens/favorite_screen.dart';
import 'package:meal_app/screens/filter_screen.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';
import 'package:meal_app/styles/themes.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MealCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        theme: themes.lightTheme,
        routes: {
          '/': (context) => TabsScreen(),
          CategoryScreen.routName: (context) => CategoryScreen(),
          FavoriteScreen.routName: (context) => FavoriteScreen(),
          CategoryMealsScreen.routName: (context) => CategoryMealsScreen(),
          MealDetail.routName: (context) => MealDetail(),
          FiltersScreen.routName: (context) => FiltersScreen(),
        },
      ),
    );
  }
}
