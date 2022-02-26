import 'package:flutter/material.dart';

import '/screens/nottodo_screen.dart';
import '/screens/generaltips_screen.dart';

import './screens/home_screen.dart';
import './screens/quiz_screen.dart';
import './screens/customhome_screen.dart';
import 'screens/whydispcorrect.dart';
import './screens/otc_screen.dart';
import './screens/sharps_screen.dart';
import './screens/findpharm_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SafeMed',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Raleway',
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) =>
            HomeScreen(), //replace with HomeScreen() after firstintro is coded
        NottoDo.routeName: (ctx) => NottoDo(),
        GeneralTips.routeName: (ctx) => GeneralTips(),
        CustomHomeScreen.routeName: (ctx) => CustomHomeScreen(),
        Otc.routeName: (ctx) => Otc(),
        WhyDispCorrect.routeName: (ctx) => WhyDispCorrect(),
        AboutDispProcess.routeName: (ctx) => AboutDispProcess(),
        FindPharm.routeName: (ctx) => FindPharm(),
        Quiz.routeName: (ctx) => Quiz()
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => HomeScreen(),
        );
      },
    );
  }
}
