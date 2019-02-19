import 'package:flutter/material.dart';
import 'package:learn_flutter/utils/app_util.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';

/// 页面导航
class ActivityDemoComponent extends StatefulWidget {
  @override
  ActivityDemoComponentState createState() {
    return new ActivityDemoComponentState();
  }
}

class ActivityDemoComponentState extends State<ActivityDemoComponent> {
  String _result = '默认';

  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      appbar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('Activity:$_result'),
      ),
      child: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () => _jumpShowPage(context),
            child: Text('跳转传值'),
          ),
          RaisedButton(
            onPressed: () => _jumpWithoutAnimation(context),
            child: Text('无动画跳转'),
          ),
          RaisedButton(
            onPressed: () => _jumpCustomAnimation(context),
            child: Text('带动画跳转'),
          )
        ],
      ),
    );
  }

  /// 带值跳转
  _jumpShowPage(BuildContext context) async {
    String result = await Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return _ShowPage(argument: "首页");
      }),
    );
    setState(() {
      _result = result ?? "失败";
    });
  }

  /// 取消页面跳转动画
  _jumpWithoutAnimation(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
        return _ShowPage(argument: "无动画");
      }),
    );
  }

  /// 自定义页面跳转动画
  _jumpCustomAnimation(BuildContext context) {
    Navigator.of(context).push(
        PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
      return _ShowPage(argument: "带动画");
    }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return Navigation.createNavigationTransition(animation, child);
    }));
  }

  /// 双击退出页面
  _jumpDoubleBackPage(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
        return _DoubleBackPage();
      }),
    );
  }
}

/// 第二个页面
/// 接受A页面的传值为A，并且显示
class _ShowPage extends StatefulWidget {
  final String argument;

  _ShowPage({Key key, this.argument}) : super(key: key);

  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<_ShowPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      appbar: AppBar(
        // 这里不能使用字符串模板 ？？？
        title: Text("上个页面的值:" + widget.argument),
        backgroundColor: Colors.black54,
      ),
      child: Center(
        child: RaisedButton(
          onPressed: () => _goBackWithResult(context),
          child: Text("点我返回"),
        ),
      ),
    );
  }

  /// 退出当前页面接受返回值
  _goBackWithResult(BuildContext context) {
    Navigator.pop(context, "成功");
  }
}

class _DoubleBackPage extends StatelessWidget {
  String _message = "";
  int last = 0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      appbar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('双击退出页面'),
      ),
      child: Center(
        child: Text('$_message'),
      ),
    );
  }
}
