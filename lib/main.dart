import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/button.dart';
import 'package:flutter_widgets/screens/home.dart';
import 'package:flutter_widgets/screens/input.dart';
import 'package:flutter_widgets/screens/notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: {
        Button.routeName: (context) => Button(),
        Input.routeName: (context) => Input(),
        NotificationPage.routeName: (context) => NotificationPage(),
      },
    );
  }
}
