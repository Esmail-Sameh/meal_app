import 'package:flutter/material.dart';
import 'package:meal_app/cubit/cubit.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routName = 'Category_Meals_Screen';

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categoryTitle;
  List<Meal>? displayMeals;

  @override
  void didChangeDependencies() {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final category_Id = routeArg['id'];
    categoryTitle = routeArg['title'];
    displayMeals = MealCubit.get(context).availableMeals.where((meal) {
      return meal.catories.contains(category_Id);
    }).toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${categoryTitle}',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Meal_Item(
            id: displayMeals![index].id,
            title: displayMeals![index].title,
            imageUrl: displayMeals![index].imageUrl,
            duration: displayMeals![index].duration,
            complexity: displayMeals![index].complexity,
            affordability: displayMeals![index].affordability,
          );
        },
        itemCount: displayMeals!.length,
      ),
    );
  }
}
