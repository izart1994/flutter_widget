import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/drawer_widget.dart';

class Button extends StatelessWidget {
  static const routeName = '/button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Widget'),
      ),
      drawer: DrawerWidget(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const RaisedButton(
                elevation: 2,
                disabledColor: Colors.green,
                disabledTextColor: Colors.white,
                onPressed: null,
                child: Text(
                  'Raised Button',
                ),
              ),
              Divider(),
              MaterialButton(
                elevation: 4,
                child: Text('Material Button'),
                disabledColor: Colors.red[500],
                disabledTextColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: null,
                key: ValueKey('BestButton'),
              ),
              Divider(),
              FlatButton(
                disabledColor: Colors.blue,
                disabledTextColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: null,
                child: Text(
                  "Flat Button",
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
