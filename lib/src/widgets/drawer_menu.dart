import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/src/pages/home_page.dart';
import 'package:flutter_shared_preferences/src/pages/settings_page.dart';

class DrawerMenu extends StatelessWidget {
  final String currentRouteName;
  DrawerMenu({this.currentRouteName});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/menu-img.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home, color: Theme.of(context).accentColor),
            selected: currentRouteName == HomePage.routeName ? true : false,
            onTap: () => currentRouteName == HomePage.routeName
                // Evitamos que se recargue toda la página y cerramos el drawer
                ? Navigator.pop(context)
                : Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings, color: Theme.of(context).accentColor),
            selected: currentRouteName == SettingsPage.routeName ? true : false,
            onTap: () => currentRouteName == SettingsPage.routeName
                // Evitamos que se recargue toda la página y cerramos el drawer
                ? Navigator.pop(context)
                : Navigator.pushReplacementNamed(
                    context, SettingsPage.routeName),
          ),
        ],
      ),
    );
  }
}
