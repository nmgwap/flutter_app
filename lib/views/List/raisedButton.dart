import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/app_size.dart';

class ListRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('RaisedButton'),
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
  _log() {
    print("点击了按钮");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(AppSize.width(20), AppSize.height(20),
          AppSize.width(20), AppSize.height(20)),
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '1 按钮',
                style: new TextStyle(
                  fontSize: AppSize.sp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '2 带颜色',
                style: new TextStyle(
                  fontSize: AppSize.sp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.red,
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.blueGrey,
            textColor: Colors.white,
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '3 点击按钮时水波纹的颜色',
                style: new TextStyle(
                  fontSize: AppSize.sp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.black12,
            textColor: Colors.white,
            splashColor: Colors.black,
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.black26,
            textColor: Colors.white,
            splashColor: Colors.blue,
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '4 高亮颜色，点击（长按）按钮后的颜色',
                style: new TextStyle(
                  fontSize: AppSize.sp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.deepPurple,
            textColor: Colors.white,
            splashColor: Colors.blue,
            highlightColor: Colors.green,
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Text(
                '5 设置按钮的形状',
                style: new TextStyle(
                  fontSize: AppSize.sp(38),
                  color: new Color(0xff030303),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.indigoAccent,
            textColor: Colors.white,
            splashColor: Colors.blue,
            highlightColor: Colors.green,
            shape: BeveledRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.lightGreenAccent,
            textColor: Colors.black,
            splashColor: Colors.blue,
            highlightColor: Colors.green,
            shape: CircleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.yellow,
            textColor: Colors.black,
            splashColor: Colors.blue,
            highlightColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            onPressed: _log,
            child: Text("按钮"),
            color: Colors.pinkAccent,
            textColor: Colors.black,
            splashColor: Colors.blue,
            highlightColor: Colors.green,
            shape: StadiumBorder(),
          ),
        ),
      ],
    );
  }
}

// 属性
class ShowAttribute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: rootBundle.loadString('lib/markdown/raisedButton.md'),
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
