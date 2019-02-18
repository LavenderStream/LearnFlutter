import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/effect_scroll_view_behavior.dart';
import 'package:learn_flutter/components/app/stream/follow_stream_component.dart';

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
        body: ScrollConfiguration(
          behavior: EffectScrollViewBehavior(),
          child: _renderNestedHeader(),
        ),
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
        flexibleSpace: _renderFlexibleView(),
        bottom: PreferredSize(
          // tab栏居左显示
          child: Container(
            alignment: Alignment.centerLeft,
            child: _renderTabBar(),
          ),
          preferredSize: Size(double.infinity, 0),
        ),
      ),
    ];
  }

  /// 视差视图
  Widget _renderFlexibleView() {
    return FlexibleSpaceBar(
      centerTitle: false,
      background: Image.network(
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550235620901&di=7b89cb31ef33a4442035e7aebcfebee9&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F2be7ed87edc5226bca030f4beca95087c2f71651.jpg",
        fit: BoxFit.cover,
      ),
    );
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
  /// 动态添加流页面布局
  Widget _renderTabView() {
    final List<Widget> streams = [];
    streams.add(FollowStreamComponent());
    for (int i = 1; i < _tabs.length; i++) {
      streams.add(Stack(
        children: <Widget>[
          Text(_tabs[i].text),
        ],
      ));
    }
    return TabBarView(
      children: streams,
    );
  }
}
