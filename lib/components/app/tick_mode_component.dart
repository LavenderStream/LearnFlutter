import 'package:flutter/material.dart';

class TickModeComponent extends StatefulWidget {
  final List<Widget> children;
  final int which;

  TickModeComponent({Key key, @required this.which, @required this.children})
      : assert(which != null, children != null),
        super(key: key);

  @override
  _TickModeComponentState createState() => _TickModeComponentState();
}

class _TickModeComponentState extends State<TickModeComponent> {
  @override
  Widget build(BuildContext context) {
    List<Widget> ticker = [];
    for (int i = 0; i < widget.children.length; i++) {
      ticker.add(Offstage(
        offstage: widget.which != i,
        child: TickerMode(
          enabled: widget.which == i,
          child: widget.children[i],
        ),
      ));
    }
    return Stack(
      children: ticker,
    );
  }
}
