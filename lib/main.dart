import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/account.dart';
import './screens/settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      builder: (context) => Data(),
      child: MaterialApp(home: AccountScreen(), routes: {
        'account_screen': (context) => AccountScreen(),
        'settings_screen': (context) => SettingsScreen(),
      }),
    );
  }
}

class Data extends ChangeNotifier {
  Map data = {
    'name': 'Frank Abignale',
    'email': 'someEmail@alligatorio',
    'age': 47
  };

  void updateAccount(input) {
    data = input;
    notifyListeners();
  }
}
