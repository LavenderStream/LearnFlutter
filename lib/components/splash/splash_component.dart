import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_flutter/utils/constants.dart';
import 'package:learn_flutter/utils/log_util.dart';
import 'package:learn_flutter/utils/shared_preferences_util.dart';

import '../../components/advertisement/banner_component.dart';
import '../../components/app/app_component.dart';

/// 程序闪屏页面
class SplashComponent extends StatefulWidget {
  @override
  _SplashComponentState createState() => _SplashComponentState();
}

class _SplashComponentState extends State<SplashComponent> {
  Timer _timer;
  int _count = 1;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _count--;
        if (_count <= 0) {
          _timer?.cancel();
          _jumpNextPage();
        }
      });
    });
  }

  // 判断下一步跳转的路由
  // 跳转是要在存在Navigator的组件中完成跳转，例如直接在MaterialApp无法完成跳转
  _jumpNextPage() async {
    bool first = await ShardPreferencesUtil.getInstance()
        .getBoolean(Constants.SP_FIRST_START_KEY, true);
    LogUtil.d("SplashComponent -> _jumpNextPage -> first $first");
    if (first) {
      await ShardPreferencesUtil.getInstance()
          .setBoolean(Constants.SP_FIRST_START_KEY, false);
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => BannerComponent()),
          (router) => router == null);
    } else {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => AppComponent()),
          (router) => router == null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("倒计时:$_count"),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
