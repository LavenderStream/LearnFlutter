import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';

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
        title: Text('Activity$_result'),
      ),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: () => _jumpShowPage(context),
              child: Text('跳转传值A'),
            ),
          ),
        ],
      ),
    );
  }

  _jumpShowPage(BuildContext context) async {
    String result = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return _ShowPage(argument: "A");
    }));
    setState(() {
      _result = result ?? "error";
    });
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
        title: Text("上个页面的值" + widget.argument),
        backgroundColor: Colors.black54,
      ),
      child: Center(
        child: RaisedButton(
          onPressed: () => _goBackWithResult(context),
          child: Text("返回"),
        ),
      ),
    );
  }

  /// 退出当前页面接受返回值 ok
  _goBackWithResult(BuildContext context) {
    Navigator.pop(context, "ok");
  }
}
