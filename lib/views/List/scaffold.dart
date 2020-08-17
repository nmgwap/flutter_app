import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/app_size.dart';

class ListScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Center(
        child: Text('Hello Flutter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('点击'),
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: 1,
        fixedColor: Colors.green,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.airplay,
            ),
            title: new Text(
              '主页',
            ),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.account_box,
            ),
            title: new Text(
              '个人中心',
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
        future: rootBundle.loadString('lib/markdown/scaffold.md'),
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
