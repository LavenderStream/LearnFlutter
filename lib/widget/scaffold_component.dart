import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/effect_scroll_view_behavior.dart';

class ScaffoldComponent extends StatefulWidget {
  final child;
  final color;
  final appbar;

  ScaffoldComponent({Key k, @required this.child, this.color, this.appbar})
      : super(key: k);

  @override
  ScaffoldComponentState createState() => ScaffoldComponentState();
}

class ScaffoldComponentState extends State<ScaffoldComponent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child){
        return ScrollConfiguration(
          behavior: EffectScrollViewBehavior(),
          child: child,
        );
      },
      home: Scaffold(
        appBar: widget.appbar,
        backgroundColor: widget.color,
        body: widget.child,
      ),
    );
  }
}
