import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';

class EditDemoComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScaffoldComponent(
        appbar: AppBar(
           backgroundColor: Colors.cyan,
          title: Text('Edit'),
        ),
        child: Center(
          child: Text("Edit"),
        ),
      ),
    );
  }
}
