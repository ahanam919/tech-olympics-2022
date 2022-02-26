import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstIntro extends StatefulWidget {
  static const routeName = '/firstintro';
  @override
  _FirstIntroState createState() => _FirstIntroState();
}

var selectitem;

class _FirstIntroState extends State<FirstIntro> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Let's Begin")),
      body: Mydropdown(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Mydropdown() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(value: value, child: Text(value));
      }).toList(),
      /*child: CupertinoPicker(
                scrollController: FixedExtentScrollController(),
                backgroundColor: Colors.yellow.shade600,
                children: <Widget>[
                  Text(
                    "California",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Montana",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Nevada",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Washington",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Oregon",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Other",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
                itemExtent: 34, //height of each item
                looping: false,
                onSelectedItemChanged: (int index) {
                  selectitem = index;
                })*/
    );
  }
}
