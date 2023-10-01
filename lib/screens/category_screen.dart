import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_Items.dart';
import '../dummy_data.dart';
class Category_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "Meal App"
          ),
        ),
        body: GridView(
          padding: EdgeInsets.all(20),
          children: DUMMY_CATEGORIES.map((catData) =>
            Category_Items(
              id: catData.id,
              title: catData.title,
              color: catData.color
            ),
          ).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
        ));
  }
}
