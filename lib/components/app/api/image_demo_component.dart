import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';

class ImageDemoComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      appbar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Image'),
      ),
      child: ListView(
        children: <Widget>[
          Image.asset(
            "images/demo.png",
            width: 100.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Image.network(
            "http://i0.hdslb.com/bfs/archive/dec650b5903238973181778043a65698567acf15.jpg",
            width: 100.0,
            height: 200.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
