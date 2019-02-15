import 'package:flutter/material.dart';

/// 信息流布局
class StreamComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        body: Center(
          child: Text("stream"),
        ));
  }
}
