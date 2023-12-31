import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';
import '../widgets/meal_detail_build_contaner.dart';
import '../dummy_data.dart';

class MealDetail extends StatelessWidget {
  static const routName = 'MealDetail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    var cubit = MealCubit.get(context);
    return BlocConsumer<MealCubit, MealStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(selectedMeal.title),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Image.network(selectedMeal.imageUrl,
                      fit: BoxFit.fill, width: double.infinity, height: 300),
                ),
                mealBuildCSectionTitle(text: 'Ingredients'),
                mealBuildContaner(
                  context: context,
                  child: ListView.builder(
                    itemBuilder: (context, index) => Card(
                      margin: EdgeInsets.all(8),
                      color: Theme.of(context).hintColor,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '${selectedMeal.ingredients[index]}',
                        ),
                      ),
                    ),
                    itemCount: selectedMeal.ingredients.length,
                  ),
                ),
                mealBuildCSectionTitle(text: 'Steps'),
                mealBuildContaner(
                  context: context,
                  child: ListView.builder(
                    itemBuilder: (context, index) => ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${index + 1}'),
                      ),
                      title: Text('${selectedMeal.steps[index]}'),
                    ),
                    itemCount: selectedMeal.steps.length,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              cubit.setFavoriteMeals(mealId);
              cubit.isFavoriteMeal(mealId);
              print(cubit.favoriteMeals.length);
              print(cubit.isFavorite);
            },
            child: Icon(
              cubit.isFavoriteMeal(mealId) ? Icons.star : Icons.star_border,
              color: Colors.black,
            ),
            backgroundColor: Theme.of(context).hintColor,
          ),
        );
      },
    );
  }
}
