import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/cubit/cubit.dart';
import 'package:meal_app/cubit/states.dart';
import 'package:meal_app/widgets/drawer.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = MealCubit.get(context);
    return BlocConsumer<MealCubit , MealStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('${cubit.titles[cubit.currentIndex]}'),
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap:(value) {
             cubit.change_Button_NavBar_State(value);
            } ,
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),

            ],
          ),
          drawer: DrawerBuilder(),
        );
      },
    );
  }
}
