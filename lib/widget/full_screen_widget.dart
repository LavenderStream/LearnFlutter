import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:learn_flutter/locale/translations_delegate.dart';

/// 提供一个全屏显示的组件
/// SystemChrome.setEnabledSystemUIOverlays([]);
class FullScreenComponent extends StatefulWidget {
  final Widget child;
  final Color color;

  FullScreenComponent({Key k, @required this.child, this.color})
      : super(key: k);

  @override
  _FullScreenComponentState createState() => _FullScreenComponentState();
}

class _FullScreenComponentState extends State<FullScreenComponent> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('zh'),
      ],
      home: Scaffold(
        backgroundColor: widget.color,
        body: widget.child,
      ),
    );
  }
}
