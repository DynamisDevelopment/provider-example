import 'package:flutter/material.dart';
import './screens/account.dart';
import './screens/settings.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, AccountScreen.id),
              child: Icon(Icons.account_circle, color: Colors.white)),
          FlatButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, SettingsScreen.id),
              child: Icon(Icons.settings, color: Colors.white)),
        ],
      ),
    );
  }
}
