import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Container(
          color: Colors.amber,
          child: ListView(
            /// 将padding设置为0,填充状态栏高度
            padding: EdgeInsets.zero,
            children: <Widget>[
              _renderHeader(),
            ],
          ),
        ),
      ),
    );
  }

  /// 返回抽屉组件的头部
  Widget _renderHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text(
        "tiny",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      accountEmail: Text(
        "2645710058@qq.com",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://upload.jianshu.io/users/upload_avatars/1285832/5c58995660c4?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
      ),
    );
  }
}
