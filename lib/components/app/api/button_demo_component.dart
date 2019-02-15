import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';

class ButtonDemoComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      appbar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Button'),
      ),
      child: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("normal"),
            onPressed: () => {},
          ),
          FlatButton(
            child: Text("normal"),
            onPressed: () => {},
          ),
          OutlineButton(
            child: Text("normal"),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () => {},
          ),
          Container(
            alignment: Alignment.center,
            child: FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.pink,
              child: Text("Submit"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
