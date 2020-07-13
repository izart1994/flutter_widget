import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/button.dart';
import 'package:flutter_widgets/screens/input.dart';
import 'package:flutter_widgets/screens/notification.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return Drawer(
      child: Column(
        children: <Widget>[
          Opacity(
            opacity: 0.75,
            child: Container(
              height: _height / 6,
              padding: EdgeInsets.only(top: _height / 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue[600], Colors.blueAccent],
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.black,
                  ),
                  radius: 30,
                  backgroundColor: Colors.black,
                ),
                title: Text("Admin"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.radio_button_checked),
            title: Text("Button"),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(Button.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.input),
            title: Text("Input"),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(Input.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notification"),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(NotificationPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
