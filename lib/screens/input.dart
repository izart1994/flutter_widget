import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/drawer_widget.dart';

enum SingingCharacter { lafayette, jefferson }

class Input extends StatefulWidget {
  static const routeName = '/input';

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  SingingCharacter _character = SingingCharacter.lafayette;
  RangeValues _values = RangeValues(0.3, 0.7);
  double _value = 5.0;
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Widget'),
      ),
      drawer: DrawerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Nama Anda',
              labelText: 'Nama *',
            ),
            onSaved: (String value) {},
            validator: (String value) {
              return value.contains('@') ? 'Jangan gunakan @.' : null;
            },
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('Lafayette'),
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
          RadioListTile<SingingCharacter>(
            title: const Text('Thomas Jefferson'),
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
          Text('Slider'),
          Slider(
            min: 0,
            max: 100,
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
          Text('RangeSlider'),
          RangeSlider(
            values: _values,
            onChanged: (RangeValues values) {
              setState(() {
                _values = values;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // [Monday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Mon"),
                  Checkbox(
                    value: monVal,
                    onChanged: (bool value) {
                      setState(() {
                        monVal = value;
                      });
                    },
                  ),
                ],
              ),
              // [Tuesday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Tu"),
                  Checkbox(
                    value: tuVal,
                    onChanged: (bool value) {
                      setState(() {
                        tuVal = value;
                      });
                    },
                  ),
                ],
              ),
              // [Wednesday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Wed"),
                  Checkbox(
                    value: wedVal,
                    onChanged: (bool value) {
                      setState(() {
                        wedVal = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
