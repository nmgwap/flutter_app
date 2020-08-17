import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/app_size.dart';

class ListFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('FloatingActionButton'),
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MaterialApp Demo"),
        ),
        body: Center(
          child: Text('Hello Flutter'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
          }, // 点击调用方法
          tooltip: 'aaa',
          foregroundColor: Colors.red,
          backgroundColor: Colors.red[200],
          focusColor: Colors.blue,
          hoverColor: Colors.blue,
          hoverElevation: 10,
          focusElevation: 10,
          disabledElevation: 10,
          elevation: 10,
          highlightElevation: 20,
          mini: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          isExtended: true,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
        future: rootBundle.loadString('lib/markdown/floatingActionButton.md'),
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
