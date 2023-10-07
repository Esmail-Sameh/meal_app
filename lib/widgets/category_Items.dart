import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meal_app/screens/category_meals_screen.dart';

class Category_Items extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const Category_Items({
    required this.id,
    required this.title,
    required this.color
  });

  void selectCategory(BuildContext context){
    Navigator.pushNamed(context,
      CategoryMealsScreen.routName,
      arguments: {
      'id': id,
      'title': title,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          this.title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}