import 'package:flutter/material.dart';
// 字体适配
import '../utils/app_size.dart';

import '../views/search_list.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SearchPage();
  }
}

class _SearchPage extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: double.infinity,
      color: new Color(0xfafafcff),
      child: new Container(
        margin: EdgeInsets.all(AppSize.width(25)),
        child: Column(children: <Widget>[
          // 大标题
          new Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(AppSize.width(55), AppSize.height(100),
                AppSize.width(55), AppSize.height(10)),
            child: new Text(
              "全局搜索所有组件",
              style: new TextStyle(
                fontSize: AppSize.sp(56),
                color: new Color(0xff030303),
              ),
            ),
          ),
          // 小标题
          new Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(AppSize.width(55), AppSize.width(10),
                AppSize.width(55), AppSize.width(20)),
            child: new Text(
              "输入关键字搜索你想搜索的内容",
              style: new TextStyle(
                fontSize: AppSize.sp(26),
                color: new Color(0xff7c7c7e),
              ),
            ),
          ),
          // 搜索框
          new Container(
            margin: EdgeInsets.fromLTRB(
                0, AppSize.width(100), AppSize.width(0), AppSize.width(20)),
            padding:
                EdgeInsets.fromLTRB(AppSize.width(30), 0, AppSize.width(30), 0),
            decoration: new BoxDecoration(
                border: new Border.all(
                    color: Color(0xFFcccccc), width: AppSize.width(3)),
                color: Color(0xFFffffff),
                borderRadius: new BorderRadius.circular((AppSize.width(20)))),
            height: AppSize.height(100),
            width: double.infinity,
            child: new Row(children: <Widget>[
              new Container(
                child: new Image(
                  image: new AssetImage('lib/assets/icon/search.png'),
                  width: AppSize.width(50),
                  height: AppSize.width(50),
                ),
              ),
              Expanded(
                child: new Container(
                  padding: EdgeInsets.fromLTRB(AppSize.width(30), 0, 0, 0),
                  child: GestureDetector(
                    child: new Text(
                      '搜索flutter组件',
                      style: new TextStyle(
                        fontSize: AppSize.sp(32),
                        color: new Color(0xff7c7c7e),
                      ),
                    ),
                    onTap: () {
                      showSearch(
                          context: context, delegate: SearchBarDelegate());
                    },
                  ),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
