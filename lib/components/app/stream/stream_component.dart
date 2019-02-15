import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';

/// 信息流布局
class StreamComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      drawer: Drawer(),
      body: Center()
    );
  }
}
