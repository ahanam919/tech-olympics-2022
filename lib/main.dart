import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import 'screens/quiz_screen_sharps.dart';
import './screens/customhome_screen.dart';
import 'screens/whydispcorrect.dart';
import 'screens/typesofmeds.dart';
import 'screens/sharps_screen.dart';
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
        CustomHomeScreen.routeName: (ctx) => CustomHomeScreen(),

        WhyDispCorrect.routeName: (ctx) => WhyDispCorrect(),
        AboutDispProcess.routeName: (ctx) => AboutDispProcess(),
        FindPharm.routeName: (ctx) => FindPharm()
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
