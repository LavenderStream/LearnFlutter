import 'package:flutter/material.dart';

/// 提供一个全屏显示的组件
/// SystemChrome.setEnabledSystemUIOverlays([]);
class FullScreenComponent extends StatefulWidget {
  final Widget child;
  final Color color;

  FullScreenComponent({Key k, @required this.child, this.color})
      : super(key: k);

  @override
  _FullScreenComponentState createState() => _FullScreenComponentState();
}

class _FullScreenComponentState extends State<FullScreenComponent> {
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
