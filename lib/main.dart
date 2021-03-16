import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/src/pages/home_page.dart';
import 'package:flutter_shared_preferences/src/pages/settings_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shared Preferences',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
      theme: ThemeData.dark(),
    );
  }
}
