import 'package:flutter/material.dart';
import 'package:learn_flutter/locale/translations_delegate.dart';
import 'package:learn_flutter/utils/log_util.dart';


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
        _renderAppItem(context),
        _renderSettingItem(context),
      ],
    );
  }

  _renderAppItem(BuildContext context) {
    return BottomNavigationBarItem(
      icon: Icon(Icons.keyboard_arrow_left),
      title: Text(
        Translations.of(context).text('app_navigation_bar_haha'),
      ),
    );
  }

  _renderSettingItem(BuildContext context) {
    return BottomNavigationBarItem(
      icon: Icon(Icons.widgets),
      title: Text(
        Translations.of(context).text('app_navigation_bar_widget'),
      ),
    );
  }
}
