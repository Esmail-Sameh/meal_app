import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/cubit/cubit.dart';
import 'package:meal_app/cubit/states.dart';
import 'package:meal_app/widgets/drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routName = 'FiltersScreen';

  Widget buildSwitchListTile({
    required String title,
    required String subtitle,
    required bool value,
    required Function(bool)? updateValue,
  }) =>
      SwitchListTile(
        value: value,
        onChanged: updateValue,
        title: Text(title , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
        subtitle: Text(subtitle , style: TextStyle(fontSize: 15 , ),),
      );

  @override
  Widget build(BuildContext context) {
    var cubit = MealCubit.get(context);

    return BlocConsumer<MealCubit , MealStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return  Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Your Filters',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Adjust your meal selection',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                buildSwitchListTile(
                  title: 'Gluten-Free',
                  subtitle: 'Only include gluten-free meals',
                  value: cubit.glutenFree,
                  updateValue: (value) {
                    cubit.changeGluten(value);
                  },
                ),
                buildSwitchListTile(
                    title: 'Lactose-Free',
                    subtitle: 'Only include lactose-Free meals',
                    value: cubit.lactoseFree,
                    updateValue: (value){
                      cubit.changeLactoseFree(value);
                    }
                ),
                buildSwitchListTile(
                    title: 'Vegetarian',
                    subtitle: 'Only include vegetarian meals',
                    value: cubit.vegetarian,
                    updateValue: (value){
                      cubit.changeVegetarian(value);
                    }
                ),
                buildSwitchListTile(
                    title: 'Vegan',
                    subtitle: 'Only include vegan meals',
                    value: cubit.vegan,
                    updateValue: (value){
                      cubit.changeVegan(value);
                    }
                ),

              ],
            ),
          ),
          drawer: DrawerBuilder(),
        );
      },

    );
  }
}


