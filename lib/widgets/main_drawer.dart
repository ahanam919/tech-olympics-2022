import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/customhome_screen.dart';
import 'package:flutter_complete_guide/screens/home_screen.dart';
import '../screens/findpharm_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        tapHandler();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Main Menu!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Home', Icons.home, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CustomHomeScreen()));
          }),
          buildListTile('Disposal Finder', Icons.search, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FindPharm()));
          }),
        ],
      ),
    );
  }
}
