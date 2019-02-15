import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';

class CheckDemoComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      appbar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Check'),
      ),
      child: CheckLess(),
    );
  }
}

class CheckLess extends StatefulWidget {
  _CheckLessState createState() => _CheckLessState();
}

class _CheckLessState extends State<CheckLess> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected,
          activeColor: Colors.green,
          onChanged: (value) {
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          activeColor: Colors.green,
          onChanged: (value) {
            setState(() {
              _checkboxSelected = value;
            });
          },
        ),
      ],
    );
  }
}
