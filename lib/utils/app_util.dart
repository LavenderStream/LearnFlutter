import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class UI {
  /// 获取设备宽度
  static double getDeviceWidth(BuildContext context) {
    return window.physicalSize.width;
  }

  /// 获取设备高度
  static double getDeviceHeight(BuildContext context) {
    return window.physicalSize.height;
  }

  static double getDevicePixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  /// 获取屏幕宽度
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// 获取屏幕高度
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// 获取状态栏高度
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  /// 设置状态栏颜色
  static void setStatusBarColor(
      {Color color, Brightness brightness = Brightness.light}) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarBrightness: brightness,
        statusBarIconBrightness: brightness);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class Navigation {
  /// 创建路由翻页动画
  static SlideTransition createNavigationTransition(
      Animation<double> animation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(animation),
      child: child,
    );
  }
}
