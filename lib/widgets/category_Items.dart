import 'package:flutter/material.dart';

class Category_Items extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const Category_Items(
      {required this.id, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Done ${id}");
      },
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
