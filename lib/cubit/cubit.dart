import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/screens/favorite_screen.dart';
import '../cubit/states.dart';
import '../dummy_data.dart';
import '../models/meal.dart';
import '../screens/category_screen.dart';

class MealCubit extends Cubit<MealStates>{
  MealCubit() :super(Meal_Initial_State());

  static MealCubit get(context)=>BlocProvider.of(context);

  late int currentIndex = 0;
  List<Widget> screens = [
    CategoryScreen(),
    FavoriteScreen(),
  ];
  List<String> titles = [
    'Category',
    'Favorite',
  ];
  List<Meal> availableMeals = DUMMY_MEALS;
  bool glutenFree = false;
  bool vegan = false;
  bool vegetarian = false;
  bool lactoseFree = false;

  void changeGluten (bool value){
    glutenFree = value ;
    emit(Meal_Change_Gluten_Value());
  }
  void changeVegan (bool value){
    vegan = value ;
    emit(Meal_Change_Vegan_Value());
  }
  void changeVegetarian (bool value){
    vegetarian = value ;
    emit(Meal_Change_Vegetarian_Value());
  }
  void changeLactoseFree(bool value){
    lactoseFree = value ;
    emit(Meal_Change_LactoseFree_Value());
  }

  void change_Button_NavBar_State(int value){
    currentIndex = value ;
    emit(Meal_Change_Button_NavBar_State());
  }

  void saveFilters(){
    availableMeals = DUMMY_MEALS.where((meal){
      if(glutenFree && !meal.isGlutenFree){
        return false;
      }
      if(lactoseFree && !meal.isLactoseFree){
        return false;
      }
      if(vegan && !meal.isVegan){
        return false;
      }
      if(vegetarian && !meal.isVegetarian){
        return false;
      }
      return true;
    }).toList();
    emit(Meal_Save_Filters_Value());
  }


}