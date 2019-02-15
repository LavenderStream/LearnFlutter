import 'package:flutter/material.dart';
import 'package:learn_flutter/components/app/drawer_component.dart';

/// 程序首页
class AppComponent extends StatefulWidget {
  @override
  _AppComponentState createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        drawer: DrawerComponent(),
        body: Center(
          child: Text('首页'),
        ),
      ),
    );
  }
}
