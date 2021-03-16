import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/src/widgets/drawer_menu.dart';

class HomePage extends StatelessWidget {
  static final routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: DrawerMenu(
        currentRouteName: routeName,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Color secundario:"),
          Divider(),
          Text("Genero:"),
          Divider(),
          Text("Nombre de usuario:"),
          Divider()
        ],
      ),
    );
  }
}
