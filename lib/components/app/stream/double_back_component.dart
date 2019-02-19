import 'package:flutter/material.dart';
import 'package:learn_flutter/utils/app_util.dart';

class DoubleBackComponent extends StatefulWidget {
  final Widget child;

  DoubleBackComponent({Key key, @required this.child})
      : assert(child != null),
        super(key: key);

  @override
  DoubleBackComponentState createState() => DoubleBackComponentState();
}

class DoubleBackComponentState extends State<DoubleBackComponent> {
  int _last = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: widget.child,
      onWillPop: _doubleExit,
    );
  }

  /// true 意味着退出
  Future<bool> _doubleExit() {
    int now = DateTime.now().millisecondsSinceEpoch;
    print(now - _last);
    if (now - _last < 800) {
      return Future.value(true);
    } else {
      _last = DateTime.now().millisecondsSinceEpoch;
      Toast.show("再按一次退出");
      return Future.value(false);
    }
  }
}
