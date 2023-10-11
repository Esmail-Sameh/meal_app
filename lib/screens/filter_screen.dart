import 'package:flutter/material.dart';
import 'package:meal_app/widgets/drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routName = 'FiltersScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Text(
          'Filter',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),
        ),
      ),
      drawer: DrawerBuilder(),
    );
  }
}
