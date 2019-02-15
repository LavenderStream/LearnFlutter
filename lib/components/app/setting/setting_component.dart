import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';

class SettingComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
        appbar: AppBar(
          title: Text("设置"),
        ),
        child: Center(
          child: Text("设置"),
        ));
  }
}
