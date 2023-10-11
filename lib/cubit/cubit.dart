import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/screens/favorite_screen.dart';
import '../cubit/states.dart';
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

}