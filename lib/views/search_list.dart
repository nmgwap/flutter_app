import 'package:flutter/material.dart';
import '../json/searchList.dart';
// 字体适配
import '../utils/app_size.dart';

typedef SearchItemCall = void Function(String item);

class SearchBarDelegate extends SearchDelegate<String> {
  // 搜索条右侧的按钮执行方法，我们在这里方法里放入一个clear图标。 当点击图片时，清空搜索的内容。
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          // 清空搜索内容
          query = "";
        },
      )
    ];
  }

  // 搜索栏左侧的图标和功能，点击时关闭整个搜索页面
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, "");
      },
    );
  }

  // 搜索到内容了
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text("搜索的结果：$query"),
      ),
    );
  }

  // 输入时的推荐及搜索结果
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList =
        searchList.where((input) => input['title'].startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        // 创建一个富文本，匹配的内容特别显示
        return new Container(
            decoration: new BoxDecoration(
              color: new Color(0xffffffff),
              borderRadius: new BorderRadius.circular((AppSize.width(20))),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                    blurRadius: 15.0, //阴影模糊程度
                    spreadRadius: 1.0 //阴影扩散程度
                    )
              ],
            ),
            margin: EdgeInsets.fromLTRB(AppSize.width(20), AppSize.height(20),
                AppSize.width(20), AppSize.height(0)),
            padding: EdgeInsets.fromLTRB(AppSize.width(0), AppSize.height(10),
                AppSize.width(0), AppSize.height(10)),
            child: new ListTile(
              enabled: true,
              title: RichText(
                  text: TextSpan(
                text: suggestionList[index]['title'].substring(0, query.length),
                style: new TextStyle(
                  fontSize: AppSize.sp(24),
                  color: new Color(0xff040404),
                ),
                children: [
                  TextSpan(
                      text: suggestionList[index]['title']
                          .substring(query.length),
                      style: TextStyle(color: Colors.grey))
                ],
              )),
              subtitle: Text(
                suggestionList[index]['key'],
                style: new TextStyle(
                  fontSize: AppSize.sp(23),
                  color: new Color(0xff7c7c7c),
                ),
              ),
              trailing: new Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pushNamed(context, suggestionList[index]['router']);
              },
            ));
      },
    );
  }
}
