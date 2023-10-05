import 'package:flutter/material.dart';
import 'package:meal_app/widgets/meal_item.dart';
import '../dummy_data.dart';

class Category_Meals_Screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final category_Id = routeArg['id'];
    final category_Title = routeArg['title'];
    final category_Meals = DUMMY_MEALS.where((meal) {
      return meal.catories.contains(category_Id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${category_Title}',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Meal_Item(
            id: category_Meals[index].id,
            title: category_Meals[index].title,
            imageUrl: category_Meals[index].imageUrl,
            duration: category_Meals[index].duration,
            complexity: category_Meals[index].complexity,
            affordability: category_Meals[index].affordability,
          );
        },
        itemCount: category_Meals.length,
      ),
    );
  }
}
