import 'package:flutter/material.dart';
// 字体适配
import '../utils/app_size.dart';

class PlugList extends StatefulWidget {
  @override
  _PlugListState createState() => _PlugListState();
}

class _PlugListState extends State<PlugList> {
  List formList;
  initState() {
    super.initState();
    formList = [
      {
        "title": '网络请求',
        "children": [
          {"title": "http", "key": "http资源"},
          {"title": "Dio", "key": "http客户端"},
        ]
      },
      {
        "title": '图像处理',
        "children": [
          {"title": "images_jpeg", "key": "调用原生功能进行图片缩放压缩"},
          {"title": "images_picker", "key": "从Android和ios图象库选择图像"},
          {"title": "photo", "key": "用于选择图像，并支持多选"},
        ]
      },
      {
        "title": 'UI相关',
        "children": [
          {"title": "fluttertoast", "key": "原生提示"},
          {"title": "flutter_html", "key": "显示html标签"},
          {"title": "flutter_calendar", "key": "日历组件"},
          {"title": "flutter_picker", "key": "生成自定义选择器"},
          {"title": "flutter_spinkit", "key": "炫酷的加载动画"},
          {"title": "badge", "key": "小红点插件，用来显示未读消息等"},
        ]
      },
      {
        "title": '视频音频',
        "children": [
          {"title": "video_player", "key": "显示内嵌视频"},
          {"title": "flute_music_player", "key": "用flutter编写的自带华丽的播放界面的音频播放组件"},
          {"title": "audioplayer", "key": "播放远程或本地音频文件"},
        ]
      },
      {
        "title": '路由与状态管理',
        "children": [
          {"title": "fluro", "key": "路由导航框架"},
          {
            "title": "url_launcher",
            "key": "在Android和ios上启动URL，支持网络、电话、短信和电子邮件"
          },
          {"title": "provide", "key": "Google开发的状态管理插件"},
        ]
      },
      {
        "title": '数据存储与缓存',
        "children": [
          {"title": "sqflite", "key": "SQLite的Flutter插件"},
          {"title": "flutter_cache_manager", "key": "管理下载到本地的文件缓存"},
        ]
      },
      {
        "title": '加密相关',
        "children": [
          {"title": "crypto", "key": "在纯DART中实现的加解密函数库"},
        ]
      },
      {
        "title": '设备相关',
        "children": [
          {"title": "path_provider", "key": "提供了统一的接口获取手机上的常用目录"},
          {"title": "connectivity", "key": "获取到当前设备是否联网，以及当前的网络类型是WIFI还是移动网络"},
          {"title": "device_info", "key": "用来获取手机信息，比如：手机型号、手机类型、操作系统信息"},
          {"title": "flutter_blue", "key": "蓝牙插件"},
          {"title": "share", "key": "分享插件"},
          {"title": "open_file", "key": "调用平台打开文件。比如直接打开一个apk文件会调起平台的安装向导"},
        ]
      },
      {
        "title": '地图定位',
        "children": [
          {
            "title": "flutter_amap",
            "key": "高德地图3d flutter组件。展示原生android、ios高德地图，并与flutter交互"
          },
          {"title": "location", "key": "处理Android和iOS上的位置。它还提供位置更改时的回调"},
          {"title": "map_view", "key": "一个用于在iOS和Android上显示谷歌地图的Flutter插件"},
        ]
      },
      {
        "title": 'WebView',
        "children": [
          {
            "title": "flutter_webview_plugin",
            "key": "允许Flutter与原生Webview进行通信的插件"
          },
        ]
      },
      {
        "title": '支付扩展',
        "children": [
          {"title": "fluwx", "key": "适用于Flutter的微信SDK，方便快捷"},
          {"title": "alipay_me", "key": "支付宝插件，支持登录、支付。android还支持本地计算签名"},
          {"title": "flutter_qq", "key": "QQ登录、分享到QQ、分享到QQ空间"},
        ]
      },
    ];
  }

  Widget buildGrid() {
    List<Widget> list = [];
    List<Widget> typeList = [];
    Widget content;
    for (var item in formList) {
      for (var typeitem in item['children']) {
        typeList.add(
          ListTile(
            title: Text(
              typeitem['title'],
              style: new TextStyle(
                fontSize: AppSize.sp(24),
                color: new Color(0xff040404),
              ),
            ),
            subtitle: Text(
              typeitem['key'],
              style: new TextStyle(
                fontSize: AppSize.sp(23),
                color: new Color(0xff7c7c7c),
              ),
            ),
            trailing: new Icon(Icons.navigate_next),
          ),
        );
      }
      list.add(
        Container(
          margin: EdgeInsets.only(
            left: AppSize.width(30),
            right: AppSize.width(30),
            top: AppSize.height(10),
            bottom: AppSize.height(20),
          ),
          decoration: BoxDecoration(
            border: new Border.all(
                color: Color(0xFFf7f7f9), width: AppSize.width(3)),
            color: Color(0xFFffffff),
            borderRadius: new BorderRadius.circular(
              AppSize.width(5),
            ),
          ),
          child: ExpansionTile(
            title: Text(item['title']),
            initiallyExpanded: false,
            children: typeList,
          ),
        ),
      );
      typeList = [];
    }
    content = new Column(
      children: list,
    );
    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: buildGrid());
  }
}
