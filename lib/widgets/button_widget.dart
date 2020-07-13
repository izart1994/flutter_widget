import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue,
      onPressed: () {},
      tooltip: 'floatingActionButton',
      child: Icon(
        Icons.ac_unit,
      ),
    );
  }
}
