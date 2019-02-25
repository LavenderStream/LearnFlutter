import 'package:flutter/material.dart';

class FlutterWebView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      child: AndroidView(viewType: "webviewplugin"),
    );
  }

  /*AndroidView(viewType: "org.tiny.webviewplugin.webview")*/
}