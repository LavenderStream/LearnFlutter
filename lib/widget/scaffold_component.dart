import 'package:flutter/material.dart';

class ScaffoldComponent extends StatefulWidget {
  final child;
  final color;

  ScaffoldComponent({Key k, @required this.child, this.color}) : super(key: k);

  @override
  ScaffoldComponentState createState() => ScaffoldComponentState();
}

class ScaffoldComponentState extends State<ScaffoldComponent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: widget.color,
        body: widget.child,
      ),
    );
  }
}
