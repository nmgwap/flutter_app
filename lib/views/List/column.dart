import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/app_size.dart';

class ListColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Column'),
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
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text('flex=1'),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text('flex=2'),
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text('flex=1'),
              ),
            ),
            flex: 1,
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
        future: rootBundle.loadString('lib/markdown/column.md'),
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
