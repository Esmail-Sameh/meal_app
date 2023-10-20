import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/cubit/cubit.dart';
import 'package:meal_app/cubit/states.dart';
import '../widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  static const routName = 'Favorite_Screen';
  @override
  Widget build(BuildContext context) {
    var cubit = MealCubit.get(context);
    return BlocConsumer<MealCubit, MealStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if (cubit.favoriteMeals.isEmpty) {
          return Center(
            child: Text(
              'You have no favorites yet - start adding some!',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          );
        } else {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Meal_Item(
                id: cubit.favoriteMeals[index].id,
                title: cubit.favoriteMeals[index].title,
                imageUrl: cubit.favoriteMeals[index].imageUrl,
                duration: cubit.favoriteMeals[index].duration,
                complexity: cubit.favoriteMeals[index].complexity,
                affordability: cubit.favoriteMeals[index].affordability,
              );
            },
            itemCount: cubit.favoriteMeals.length,
          );
        }
      },
    );
  }
}
