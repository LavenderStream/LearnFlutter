import 'package:flutter/material.dart';

class FollowStreamComponent extends StatefulWidget {
  _FollowStreamComponentState createState() => _FollowStreamComponentState();
}

class _FollowStreamComponentState extends State<FollowStreamComponent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        _FollowStreamItem(),
      ],
    );
  }
}

class _FollowStreamItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: <Widget>[
          CircleAvatar(),
          Column(
            children: <Widget>[
              Text('title'),
              Text('sub-title 这个群里可能时刻提防连'),
            ],
          ),
        ],
      ),
    );
  }
}
