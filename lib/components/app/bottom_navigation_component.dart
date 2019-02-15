import 'package:flutter/material.dart';

/// 应用底部导航栏
class BottomNavigationComponent extends StatefulWidget {
  final ValueChanged<int> onTap;
  final int currentIndex;

  BottomNavigationComponent({Key k, @required this.currentIndex, this.onTap})
      : super(key: k);

  @override
  _BottomNavigationComponentState createState() =>
      _BottomNavigationComponentState();
}

class _BottomNavigationComponentState extends State<BottomNavigationComponent> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      /// 底部导航栏选中颜色
      fixedColor: Colors.amber,
      onTap: widget.onTap,
      currentIndex: widget.currentIndex,
      items: [
        _renderAppItem(),
        _renderSettingItem(),
      ],
    );
  }

  _renderAppItem() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.keyboard_arrow_left),
      title: Text('Haha'),
    );
  }

  _renderSettingItem() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.widgets),
      title: Text('Widget'),
    );
  }
}
