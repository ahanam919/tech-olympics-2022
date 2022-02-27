import 'package:flutter/material.dart';

class SharpsDispP extends StatefulWidget {
  const SharpsDispP({Key? key}) : super(key: key);

  @override
  _SharpsDispPState createState() => _SharpsDispPState();
}

class _SharpsDispPState extends State<SharpsDispP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('The Disposal Process of Sharps'),
        ),
        body: SingleChildScrollView ( child:Column(
            children: <Widget>[
              Image.asset('assets/images/getSharpsReady.png')
  
            ]
        )
    ));
}
}