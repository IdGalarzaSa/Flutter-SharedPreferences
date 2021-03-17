import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/src/widgets/drawer_menu.dart';

class SettingsPage extends StatefulWidget {
  static final routeName = "SettingsPage";

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _secondaryColor = false;
  int _gender = 1;
  String _name = "Ivan";
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = new TextEditingController(text: _name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        drawer: DrawerMenu(
          currentRouteName: SettingsPage.routeName,
        ),
        body: _body());
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Text(
            "Settings",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Divider(color: Colors.white, thickness: 7),
          SwitchListTile(
            value: _secondaryColor,
            onChanged: (newValue) {
              _secondaryColor = newValue;
              setState(() {});
            },
            title: Text("Color secundario"),
          ),
          RadioListTile(
            title: Text("Masculino"),
            value: 1,
            groupValue: _gender,
            onChanged: (newValue) {
              _gender = newValue;
              setState(() {});
            },
          ),
          RadioListTile(
            title: Text("Femenino"),
            value: 2,
            groupValue: _gender,
            onChanged: (newValue) {
              _gender = newValue;
              setState(() {});
            },
          ),
          TextField(
            controller: _textController,
            decoration: InputDecoration(
                labelText: "Nombre",
                helperText: "Nombre de la persona usando el celular"),
            onChanged: (newValue) {},
          )
        ],
      ),
    );
  }
}
