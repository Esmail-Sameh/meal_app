import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('favorite' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.blue),),
    );
  }
}
