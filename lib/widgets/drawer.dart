import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/filter_screen.dart';

class DrawerBuilder extends StatelessWidget {
  const DrawerBuilder({Key? key}) : super(key: key);

  Widget buildListTile({
    required String title,
    required IconData icon,
    required Function()? tapHandler,
  }) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      leading: Icon(icon, size: 26),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.3,
              // height: 120,
              color: Theme.of(context).hintColor,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Cooking Up!',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildListTile(
              title: 'Meal',
              icon: Icons.restaurant,
              tapHandler: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            buildListTile(
              title: 'Filters',
              icon: Icons.settings,
              tapHandler: () {
                Navigator.of(context)
                    .pushReplacementNamed(FiltersScreen.routName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
