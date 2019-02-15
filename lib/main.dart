import 'package:flutter/material.dart';

import 'components/splash/splash_component.dart';
import 'widget/full_screen_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FullScreenComponent(
      color: Colors.yellow,
      child: SplashComponent(),
    );
  }
}
