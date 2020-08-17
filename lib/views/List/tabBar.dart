import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/app_size.dart';

class ListTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          backgroundColor: Color(0xFFfafcff),
          bottom: TabBar(labelColor: Color(0xff030303), tabs: [
            Tab(
              text: "效果",
            ),
            Tab(
              text: "属性",
            )
          ]),
        ),
        body: TabBarView(children: [
          Container(
              decoration: new BoxDecoration(
                color: new Color(0xffffffff),
                borderRadius: new BorderRadius.circular((AppSize.width(20))),
              ),
              child: ShowEffect()),
          Container(
              decoration: new BoxDecoration(
                color: new Color(0xffffffff),
                borderRadius: new BorderRadius.circular((AppSize.width(20))),
              ),
              child: ShowAttribute()),
        ]),
      ),
    );
  }
}

// 效果
class ShowEffect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBarDemo"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "热门"),
                Tab(text: "推荐"),
                Tab(text: "关注"),
                Tab(text: "收藏"),
                Tab(text: "新增"),
                Tab(text: "点赞"),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text("这是热门的内容")),
              Center(child: Text("这是推荐的内容")),
              Center(child: Text("这是关注的内容")),
              Center(child: Text("这是收藏的内容")),
              Center(child: Text("这是新增的内容")),
              Center(child: Text("这是点赞的内容"))
            ],
          ),
        ),
      ),
    );
  }
}

// 属性
class ShowAttribute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: rootBundle.loadString('lib/markdown/tabBar.md'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data,
              selectable: true,
            );
          } else {
            return Center(
              child: Text("加载中..."),
            );
          }
        },
      ),
    );
  }
}
