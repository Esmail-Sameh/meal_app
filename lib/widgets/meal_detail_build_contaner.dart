import 'package:flutter/material.dart';


  Widget mealBuildContaner({
    required BuildContext context,
    required Widget child,
  }) => Container(
      margin:const EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 5),
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).canvasColor,
      ),
      child: child,
    );

  Widget mealBuildCSectionTitle({required String text})=>Container(
    margin:const EdgeInsets.symmetric(vertical: 10),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 25,
        fontFamily: 'RobotoCondensed',
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );