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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // 修改appBar 左侧边距
          titleSpacing: 4,
          backgroundColor: Colors.amber,
          title: _renderTabBar(),
        ),
        body: _renderTabView(),
      ),
    );
  }

  /// 添加一个有时差效果的头部
  Widget _renderNestedHeader() {
    return NestedScrollView(
      body: Center(
        child: Text("Sample Text"),
      ),
      headerSliverBuilder: ((context, innerBoxIsScrolled) => [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
          ]),
    );
  }

  /// 添加顶部tabLayout
  Widget _renderTabBar() {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      tabs: _tabs,
      isScrollable: true,
      labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
      indicatorColor: Colors.amberAccent,
      labelColor: Colors.white,
    );
  }

  /// 添加分页页面
  Widget _renderTabView() {
    return SafeArea(
      top: false,
      bottom: false,
      child: TabBarView(
        children: _tabs
            .map((tab) => Stack(
                  children: <Widget>[
                    Text(tab.text),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
