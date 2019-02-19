import 'package:flutter/material.dart';
import 'package:learn_flutter/components/app/api/api_component.dart';
import 'package:learn_flutter/components/app/bottom_navigation_component.dart';
import 'package:learn_flutter/components/app/drawer_component.dart';
import 'package:learn_flutter/components/app/stream/double_back_component.dart';
import 'package:learn_flutter/components/app/stream/stream_component.dart';
import 'package:learn_flutter/components/app/tick_mode_component.dart';
import 'package:learn_flutter/utils/log_util.dart';

/// 程序首页
class AppComponent extends StatefulWidget {
  @override
  _AppComponentState createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  // 当前页面下标索引
  int _which = 0;

  @override
  Widget build(BuildContext context) {
    return DoubleBackComponent(
      child: MaterialApp(
        home: Scaffold(
          drawer: DrawerComponent(),
          bottomNavigationBar: BottomNavigationComponent(
            currentIndex: _which,
            onTap: _onTapClick,
          ),
          body: TickModeComponent(
            which: _which,
            children: <Widget>[
              StreamComponent(),
              ApiComponent(context),
            ],
          ),
        ),
      ),
    );
  }

  /// 点击事件
  _onTapClick(int index) {
    setState(() {
      _which = index;
    });
    LogUtil.d("BottomNavigationComponent -> _onTapClick -> $index");
  }
}
