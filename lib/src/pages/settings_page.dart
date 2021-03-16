import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/src/widgets/drawer_menu.dart';

class SettingsPage extends StatelessWidget {
  static final routeName = "SettingsPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      drawer: DrawerMenu(
        currentRouteName: routeName,
      ),
      body: Center(
        child: Text("Hola mundo"),
      ),
    );
  }
}
