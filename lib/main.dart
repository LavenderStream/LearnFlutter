import 'package:flutter/material.dart';
import 'package:learn_flutter/components/splash/splash_component.dart';
import 'package:learn_flutter/widget/full_screen_widget.dart';

import 'package:webview_plugin/flutter_webview.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: FlutterWebView(),
      ),
    );
  }
}
