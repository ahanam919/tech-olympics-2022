import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/FindPharm_screen.dart';
import 'package:flutter_complete_guide/screens/customhome_screen.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SafeMed"),
        ),
        drawer: MainDrawer(),
        body: Center(
            child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                //rmainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Image.asset('assets/images/SafeMed.png'),
              new Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FindPharm()));
                  },
                  child: Text(
                    'Find Disposal\nLocations',
                    style: TextStyle(fontSize: 40),
                  )),
              SizedBox(height: 30, width: 40),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomHomeScreen()));
                  },
                  child: Text(
                    'Learn',
                    style: TextStyle(fontSize: 40),
                  )),
                  
              SizedBox(height: 50, width: 40)
            ])));
  }
}
