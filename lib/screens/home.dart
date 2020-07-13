import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/button_widget.dart';
import 'package:flutter_widgets/widgets/drawer_widget.dart';

class Home extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Demo'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.account_balance,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: Text(
        'Test',
        style: Theme.of(context).textTheme.headline6,
      ),
      floatingActionButton: ButtonWidget(),
      persistentFooterButtons: <Widget>[
        Text('persistentFooterButtons'),
        Icon(Icons.apps),
      ],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('bottomNavigationBar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
        ],
      ),
    );
  }
}
