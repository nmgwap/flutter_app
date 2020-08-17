import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// 字体适配
import '../../utils/app_size.dart';

class ListText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Text'),
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
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '1 text',
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
            child: Text(
                '天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。——孟子'),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '2 省略号显示',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Text('天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。——孟子',
              overflow: TextOverflow.ellipsis),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '3 字体放大',
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
            child: Row(
              children: <Widget>[
                Text('字体放大', textScaleFactor: 1),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text('字体放大', textScaleFactor: 1.2),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text('字体放大', textScaleFactor: 1.4),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text('字体放大', textScaleFactor: 1.6),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text('字体放大', textScaleFactor: 1.8),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text('字体放大', textScaleFactor: 2.0),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Text(
                  '4 控制显示行数',
                  style: new TextStyle(
                    fontSize: AppSize.sp(38),
                    color: new Color(0xff030303),
                  ),
                ),
              ],
            ),
          ),
          Text(
              '利用好奇和探索的武器培养技能和经验，建立起能抵挡不可避免的挫折的免疫系统；不断寻找自己的理想，如果不知道什么才是重要的，那么就回归人性；确保你的信心是有根据的，如果你的失败并不主要源于坏运气，那么就采取行动，找出欠缺的关系或技能；不要让骄傲阻挡了重获新生的道理；你可能需要退一步才能海阔天空；坚持自己的核心价值观和真正的自我。',
              maxLines: 2),
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
        future: rootBundle.loadString('lib/markdown/text.md'),
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
