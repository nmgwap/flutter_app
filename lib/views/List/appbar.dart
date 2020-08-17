import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/app_size.dart';

class ListAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Appbar'),
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
      padding: EdgeInsets.fromLTRB(AppSize.width(20), AppSize.height(20),
          AppSize.width(20), AppSize.height(20)),
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: AppSize.height(100)),
            width: double.infinity,
            child: new AppBar(
              title: new Text('首页'),
              leading: new Icon(Icons.home),
              backgroundColor: Colors.blue,
              centerTitle: true,
              actions: <Widget>[
                // 非隐藏的菜单
                new IconButton(
                    icon: new Icon(Icons.add_alarm),
                    tooltip: 'Add Alarm',
                    onPressed: () {}),
                // 隐藏的菜单
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: AppSize.height(100)),
            width: double.infinity,
            child: new AppBar(
              backgroundColor: Colors.redAccent,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              title: Text("AppBarDemo"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: AppSize.height(100)),
            width: double.infinity,
            child: new AppBar(
              title: Text("标题标题标题标题标题标题标题标题标题"),
              centerTitle: true,
              leading: Icon(Icons.arrow_back),
              elevation: 20.0,
              backgroundColor: Color(0xffDE331F),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.alarm),
                  tooltip: "Alarm",
                  onPressed: () {
                    print("Alarm");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.home),
                  tooltip: "Home",
                  onPressed: () {
                    print("Home");
                  },
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuItem<String>>[
                    PopupMenuItem<String>(
                      child: Text("热度"),
                      value: "hot",
                    ),
                    PopupMenuItem<String>(
                      child: Text("最新"),
                      value: "new",
                    ),
                  ],
                  onSelected: (String action) {
                    switch (action) {
                      case "hot":
                        print("hot");
                        break;
                      case "new":
                        print("new");
                        break;
                    }
                  },
                  onCanceled: () {
                    print("onCanceled");
                  },
                )
              ],
            ),
          ),
        ],
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
        future: rootBundle.loadString('lib/markdown/appbar.md'),
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
