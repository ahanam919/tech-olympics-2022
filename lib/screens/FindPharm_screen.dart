import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class FindPharm extends StatelessWidget {
  static const routeName = '/FindPharm';
  String url =
      "https://safe.pharmacy/drug-disposal/results/?distance=10&address=";
  Future<void> launchTarget(String zipcode) async {
    print(url);
    if (await canLaunch(url + zipcode))
      await launch(url + zipcode);
    else
      throw "Could not launch";
  }

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text('Nearest Medicine/Sharps Drop'),
        ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              SizedBox(
                  width: 125,
                  child: TextFormField(
                    controller: myController,
                    decoration: InputDecoration(
                        labelText: "ZipCode",
                        labelStyle: TextStyle(fontSize: 20.0),
                        //icon: Icon(Icons.add_location),
                        border: const UnderlineInputBorder()),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    maxLength: 5,
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  )),
              SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () async {
                      await launchTarget(myController.text);
                      print(myController.text);
                      myController.clear();
                      print(myController.text);
                    },
                  ))
            ])));
  }
}
