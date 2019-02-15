import 'package:flutter/material.dart';
import 'package:learn_flutter/components/app/app_component.dart';
import 'package:learn_flutter/widget/scaffold_component.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

const descriptions = [
  [Colors.pink, '不摇碧莲，干翻苍穹'],
  [Colors.lightBlue, '周五快到了，准备追更新'],
  [Colors.green, '社会我宝姐，人美路子野']
];

/// 广告页
class BannerComponent extends StatelessWidget {
  final _pageIndexNotifier = ValueNotifier<int>(0);
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    /// 页面滑动距离与方向
    //  _pageController.addListener(() {
    //    LogUtil.d("BannerComponent -> _pageController -> addListener "
    //        "${_pageController.page}");
    //  });

    return MaterialApp(
      home: ScaffoldComponent(
        child: Stack(
          alignment: FractionalOffset.bottomCenter,
          children: <Widget>[
            _renderViewPager(),
            _renderIndicator(),
          ],
        ),
      ),
    );
  }

  /// 渲染页面指示器
  Widget _renderIndicator() {
    return PageViewIndicator(
      pageIndexNotifier: _pageIndexNotifier,
      length: descriptions.length,
      normalBuilder: (animationController) => Circle(
            size: 8.0,
            color: Colors.black87,
          ),
      highlightedBuilder: (animationController) => ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: 12.0,
              color: Colors.black45,
            ),
          ),
    );
  }

  /// 渲染滑动布局
  Widget _renderViewPager() {
    return Center(
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemCount: descriptions.length,
        itemBuilder: (BuildContext context, int index) =>
            _renderPage(context, index),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  /// 渲染当前页面
  Widget _renderPage(BuildContext context, int index) {
    return Container(
      color: descriptions[index][0],
      child: Center(
        child: GestureDetector(
          onTap: () => _jumpAppComponent(context, index),
          child: Text(
            descriptions[index][1],
          ),
        ),
      ),
    );
  }

  /// 页面发生变化时、关联指示器
  void _onPageChanged(int value) {
    _pageIndexNotifier.value = value;
  }

  /// 跳转到主组件
  void _jumpAppComponent(BuildContext context, int position) {
    if (position < descriptions.length - 1) return;

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => AppComponent()),
        (router) => router == null);
  }
}
