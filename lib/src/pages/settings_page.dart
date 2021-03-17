import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/src/shared_preferences/shared_preferences.dart';
import 'package:flutter_shared_preferences/src/widgets/drawer_menu.dart';

class SettingsPage extends StatefulWidget {
  static final routeName = "SettingsPage";

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final prefs = new UserSharedPreferences();
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = new TextEditingController(text: prefs.userName);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: prefs.secondaryColor
              ? Colors.brown
              : ThemeData.dark().primaryColor,
        ),
        drawer: DrawerMenu(
          currentRouteName: SettingsPage.routeName,
        ),
        body: _body());
  }

  Widget _body() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            Divider(color: Colors.white, thickness: 7),
            SwitchListTile(
              value: prefs.secondaryColor,
              onChanged: saveSecondaryColorStatus,
              title: Text("Color secundario"),
            ),
            RadioListTile(
              title: Text("Masculino"),
              value: 1,
              groupValue: prefs.gender,
              onChanged: radioGenderChanged,
            ),
            RadioListTile(
              title: Text("Femenino"),
              value: 2,
              groupValue: prefs.gender,
              onChanged: radioGenderChanged,
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  labelText: "Nombre",
                  helperText: "Nombre de la persona usando el celular"),
              onChanged: newUserName,
            )
          ],
        ),
      ),
    );
  }

  void newUserName(newValue) {
    prefs.userName = newValue;
    setState(() {});
  }

  void radioGenderChanged(newValue) {
    prefs.gender = newValue;
    setState(() {});
  }

  void saveSecondaryColorStatus(newValue) {
    prefs.secondaryColor = newValue;
    setState(() {});
  }
}
