import 'package:flutter/material.dart';
import 'package:learn_flutter/components/app/api/activity_demo_component.dart';
import 'package:learn_flutter/components/app/api/button_demo_component.dart';
import 'package:learn_flutter/components/app/api/check_demo_component.dart';
import 'package:learn_flutter/components/app/api/edit_demo_component.dart';
import 'package:learn_flutter/components/app/api/image_demo_component.dart';
import 'package:learn_flutter/components/app/api/text_demo_component.dart';
import 'package:learn_flutter/utils/log_util.dart';
import 'package:learn_flutter/widget/effect_scroll_view_behavior.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';

class ApiComponent extends StatelessWidget {
  final _apis = ["文字、文字样式", "按钮", "图片", "单选框、复选框", "输入法和表单", "页面跳转"];
  final _parentContext;

  ApiComponent(this._parentContext);

  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      appbar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Widgets"),
      ),
      child: ScrollConfiguration(
        behavior: EffectScrollViewBehavior(),
        child: ListView.builder(
          itemBuilder: (context, index) => _renderItemView(context, index),
          itemCount: _apis.length,
        ),
      ),
    );
  }

  /// 渲染布局
  Widget _renderItemView(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      alignment: Alignment.center,
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => _jumpDetailPage(context, index),
        child: Text(
          _apis[index],
        ),
      ),
    );
  }

  /// 跳转具体描述页面
  void _jumpDetailPage(BuildContext context, int index) {
    LogUtil.d("ApiComponent -> _jumpDetailPage -> $index");
    Widget router;
    switch (index) {
      case 0:
        router = TextDemoComponent();
        break;
      case 1:
        router = ButtonDemoComponent();
        break;
      case 2:
        router = ImageDemoComponent();
        break;
      case 3:
        router = CheckDemoComponent();
        break;
      case 4:
        router = EditDemoComponent();
        break;
    }

    if (index == (_apis.length - 1)) {
      router = ActivityDemoComponent();
    }

    if (router != null && _parentContext != null) {
      Navigator.of(_parentContext).push(MaterialPageRoute(builder: (context) {
        return router;
      }));
    }
  }
}
