import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '../navbar.dart';

class AccountScreen extends StatelessWidget {
  static const String id = 'account_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navbar(),
      appBar: AppBar(
        title: Text('Account Details'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Text('Name: ' + Provider.of<Data>(context).data['name'].toString()),
          Text('Email: ' + Provider.of<Data>(context).data['email'].toString()),
          Text('Age: ' + Provider.of<Data>(context).data['age'].toString()),
        ]),
      ),
    );
  }
}
