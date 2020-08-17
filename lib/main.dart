import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// 字体适配
import 'utils/app_size.dart';
// 引入颜色
import 'utils/color.dart';
// 引入页面
import 'views/basic_page.dart';
import 'views/plug_page.dart';
import 'views/search_page.dart';
// 引入模块页面
import 'views/List/container.dart';
import 'views/List/row.dart';
import 'views/List/column.dart';
import 'views/List/image.dart';
import 'views/List/text.dart';
import 'views/List/icon.dart';
import 'views/List/raisedButton.dart';
import 'views/List/scaffold.dart';
import 'views/List/appbar.dart';
import 'views/List/flutterLogo.dart';
import 'views/List/placeholder.dart';
import 'views/List/bottomNavigationBar.dart';
import 'views/List/tabBar.dart';
import 'views/List/tabBarView.dart';
import 'views/List/materialApp.dart';
import 'views/List/widgetsApp.dart';
import 'views/List/drawer.dart';
import 'views/List/floatingActionButton.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

// 根入口
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  Router',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent, // 水波纹
        highlightColor: Colors.transparent, // 高亮
        primarySwatch: createMaterialColor(Color(0xFF86b0ed)),
      ),
      home: Homes(), // 首页布局
      routes: <String, WidgetBuilder>{
        'listContainer': (BuildContext context) => new ListContainer(),
        'listRow': (BuildContext context) => new ListRow(),
        'listColumn': (BuildContext context) => new ListColumn(),
        'listImage': (BuildContext context) => new ListImage(),
        'listText': (BuildContext context) => new ListText(),
        'listIcon': (BuildContext context) => new ListIcon(),
        'listRaisedButton': (BuildContext context) => new ListRaisedButton(),
        'listScaffold': (BuildContext context) => new ListScaffold(),
        'listAppbar': (BuildContext context) => new ListAppbar(),
        'listFlutterLogo': (BuildContext context) => new ListFlutterLogo(),
        'listPlaceholder': (BuildContext context) => new ListPlaceholder(),
        'listBottomNavigationBar': (BuildContext context) =>
            new ListBottomNavigationBar(),
        'listTabBar': (BuildContext context) => new ListTabBar(),
        'listTabBarView': (BuildContext context) => new ListTabBarView(),
        'listMaterialApp': (BuildContext context) => new ListMaterialApp(),
        'listWidgetsApp': (BuildContext context) => new ListWidgetsApp(),
        'listDrawer': (BuildContext context) => new ListDrawer(),
        'listFloatingActionButton': (BuildContext context) =>
            new ListFloatingActionButton(),
      },
    );
  }
}

// 布局
class Homes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomesState();
  }
}

// 导航及导航对应页面
class _HomesState extends State<Homes> {
  int _currentIndex = 0;
  final List<Widget> _children = [SearchPage(), BasicPage(), PlugPage()];

  @override
  Widget build(BuildContext context) {
    AppSize.init(context);
    return Scaffold(
      // 预留状态栏的高度
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: SafeArea(
          top: true,
          child: Offstage(),
        ),
      ),
      //构建底部导航，并添加点击事件
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              width: AppSize.width(48),
              height: AppSize.width(48),
              image: AssetImage("lib/assets/tabbar/search.png"),
            ),
            activeIcon: Image(
              width: AppSize.width(48),
              height: AppSize.width(48),
              image: AssetImage("lib/assets/tabbar/active-search.png"),
            ),
            title: Text('全局搜索'),
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: AppSize.width(48),
              height: AppSize.width(48),
              image: AssetImage("lib/assets/tabbar/basic.png"),
            ),
            activeIcon: Image(
              width: AppSize.width(48),
              height: AppSize.width(48),
              image: AssetImage("lib/assets/tabbar/active-basic.png"),
            ),
            title: Text('基础组件'),
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: AppSize.width(48),
              height: AppSize.width(48),
              image: AssetImage("lib/assets/tabbar/plug.png"),
            ),
            activeIcon: Image(
              width: AppSize.width(48),
              height: AppSize.width(48),
              image: AssetImage("lib/assets/tabbar/active-plug.png"),
            ),
            title: Text('常用插件'),
          ),
        ],
        selectedFontSize: AppSize.sp(18),
        unselectedFontSize: AppSize.sp(18),
      ),
      body: Container(
        decoration: new BoxDecoration(
          color: Color(0xFFfafcff),
        ),
        child: _children[_currentIndex],
      ),
    );
  }

//点击事件
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
