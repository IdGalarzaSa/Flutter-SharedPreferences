import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/src/shared_preferences/shared_preferences.dart';
import 'package:flutter_shared_preferences/src/widgets/drawer_menu.dart';

class HomePage extends StatelessWidget {
  static final routeName = "HomePage";
  final prefs = UserSharedPreferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor:
            prefs.secondaryColor ? Colors.brown : ThemeData.dark().primaryColor,
      ),
      drawer: DrawerMenu(
        currentRouteName: routeName,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Color secundario: ${prefs.secondaryColor}"),
          Divider(),
          Text("Genero: ${prefs.gender == 1 ? "Masculino" : "Femenino"}"),
          Divider(),
          Text("Nombre de usuario: ${prefs.userName}"),
          Divider()
        ],
      ),
    );
  }
}
