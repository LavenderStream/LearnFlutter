import 'package:flutter/material.dart';

/// 信息流布局
class StreamComponent extends StatefulWidget {
  @override
  StreamComponentState createState() => StreamComponentState();
}

class StreamComponentState extends State<StreamComponent> {
  final List<Tab> _tabs = <Tab>[
    Tab(text: '关注'),
    Tab(text: '手机'),
    Tab(text: '数码'),
    Tab(text: '乐器'),
    Tab(text: '租房'),
    Tab(text: '服饰'),
    Tab(text: '运动'),
    Tab(text: '美食'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: _renderNestedHeader(),
      ),
    );
  }

  /// 添加一个有视差效果的头部
  Widget _renderNestedHeader() {
    return NestedScrollView(
      body: _renderTabView(),
      headerSliverBuilder: _assembleHeaderSliverBuild,
    );
  }

  /// SliverBuild
  List<Widget> _assembleHeaderSliverBuild(
      BuildContext context, bool innerBoxIsScrolled) {
    return [
      SliverAppBar(
        backgroundColor: Colors.amber,
        pinned: true,
        expandedHeight: 200.0,
        forceElevated: innerBoxIsScrolled,
        bottom: PreferredSize(
          child: _renderTabBar(),
          preferredSize: Size(double.infinity, 0),
        ),
      ),
    ];
  }

  /// 添加顶部tabLayout
  Widget _renderTabBar() {
    return TabBar(
      tabs: _tabs,
      isScrollable: true,
      labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
      indicatorColor: Colors.white,
      labelColor: Colors.white,
    );
  }

  /// 添加分页页面
  Widget _renderTabView() {
    return TabBarView(
      children: _tabs
          .map((tab) => Stack(
                children: <Widget>[
                  Text(tab.text),
                ],
              ))
          .toList(),
    );
  }
}
