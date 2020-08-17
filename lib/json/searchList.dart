const searchList = [
  {
    "title": "Container",
    "key": "一个拥有绘制、定位、调整大小的 widget",
    "router": "listContainer"
  },
  {"title": "Row", "key": "在水平方向上排列子widget的列表", "router": "listRow"},
  {"title": "Column", "key": "在垂直方向上排列子widget的列表", "router": "listColumn"},
  {"title": "Image", "key": "一个显示图片的widget", "router": "listImage"},
  {"title": "Text", "key": "单一格式的文本", "router": "listText"},
  {"title": "Icon", "key": "图标控件，Icon不具有交互属性", "router": "listIcon"},
  {
    "title": "RaisedButton",
    "key": "Material Design中的button， 一个凸起的材质矩形按钮",
    "router": "listRaisedButton"
  },
  {
    "title": "Scaffold",
    "key": "Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API",
    "router": "listScaffold"
  },
  {
    "title": "Appbar",
    "key":
        "一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成",
    "router": "listAppbar"
  },
  {
    "title": "FlutterLogo",
    "key": "Flutter logo, 以widget形式. 这个widget遵从IconTheme",
    "router": "listFlutterLogo"
  },
  {
    "title": "Placeholder",
    "key": "一个绘制了一个盒子的的widget，代表日后有widget将会被添加到该盒子中",
    "router": "listPlaceholder"
  },
  {
    "title": "BottomNavigationBar",
    "key": "底部导航条，可以很容易地在tap之间切换和浏览顶级视图",
    "router": "listBottomNavigationBar"
  },
  {
    "title": "TabBar",
    "key": "一个显示水平选项卡的Material Design widget",
    "router": "listTabBar"
  },
  {
    "title": "TabBarView",
    "key": "显示与当前选中的选项卡相对应的页面视图。通常和TabBar一起使用",
    "router": "listTabBarView"
  },
  {
    "title": "MaterialApp",
    "key": "一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget",
    "router": "listMaterialApp"
  },
  {
    "title": "WidgetsApp",
    "key": "一个方便的类，它封装了应用程序通常需要的一些widget",
    "router": "listWidgetsApp"
  },
  {
    "title": "Drawer",
    "key": "从Scaffold边缘水平滑动以显示应用程序中导航链接的Material Design面板",
    "router": "listDrawer"
  },
  {
    "title": "FloatingActionButton",
    "key":
        "一个圆形图标按钮，它悬停在内容之上，以展示应用程序中的主要动作。FloatingActionButton通常用于Scaffold.floatingActionButton字段",
    "router": "listFloatingActionButton"
  },
  {"title": "FlatButton", "key": "一个扁平的Material按钮", "router": "listFlatButton"},
  {"title": "IconButton", "key": "一个Material图标按钮，点击时会有水波动画"},
  {"title": "PopupMenuButton", "key": "当菜单隐藏式，点击或调用onSelected时显示一个弹出式菜单列表"},
  {"title": "ButtonBar", "key": "水平排列的按钮组"},
  {"title": "TextField", "key": "文本输入框"},
  {"title": "Checkbox", "key": "复选框，允许用户从一组中选择多个选项"},
  {"title": "Radio", "key": "单选框，允许用户从一组中选择一个选项"},
  {"title": "Switch", "key": "On/off 用于切换一个单一状态"},
  {"title": "Slider", "key": "滑块，允许用户通过滑动滑块来从一系列值中选择"},
  {"title": "Date & Time Pickers", "key": "日期&时间选择器"},
  {"title": "SimpleDialog", "key": "简单对话框可以显示附加的提示或操作"},
  {"title": "AlertDialog", "key": "一个会中断用户操作的对话款，需要用户确认"},
  {
    "title": "BottomSheet",
    "key":
        "BottomSheet是一个从屏幕底部滑起的列表（以显示更多的内容）。你可以调用showBottomSheet()或showModalBottomSheet弹出"
  },
  {
    "title": "ExpansionPanel",
    "key":
        "一个material 扩展面板。它有一个 header 和一个 body ，可以展开或折叠。面板的 body 仅在展开时可见。扩展面板仅用作于 ExpansionPanelList"
  },
  {"title": "SnackBar", "key": "具有可选操作的轻量级消息提示，在屏幕的底部显示"},
  {"title": "Chip", "key": "标签，一个Material widget。 它可以将一个复杂内容实体展现在一个小块中，如联系人"},
  {
    "title": "Tooltip",
    "key": "一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签"
  },
  {
    "title": "DataTable",
    "key": "数据表显示原始数据集。它们通常出现在桌面企业产品中。DataTable Widget实现这个组件"
  },
  {"title": "Card", "key": "一个 Material Design 卡片。拥有一个圆角和阴影"},
  {
    "title": "LinearProgressIndicator",
    "key": "一个线性进度条，另外还有一个圆形进度条CircularProgressIndicator"
  },
  {"title": "ListTile", "key": "一个固定高度的行，通常包含一些文本，以及一个行前或行尾图标"},
  {"title": "Stepper", "key": "一个Material Design 步骤指示器，显示一系列步骤的过程"},
  {"title": "Divider", "key": "一个逻辑1像素厚的水平分割线，两边都有填充"},
  {
    "title": "CupertinoActivityIndicator",
    "key": "一个iOS风格的loading指示器。显示一个圆形的转圈菊花"
  },
  {"title": "CupertinoAlertDialog", "key": "iOS风格的alert dialog"},
  {"title": "CupertinoButton", "key": "iOS风格的button"},
  {"title": "CupertinoDialog", "key": "iOS风格的对话框"},
  {
    "title": "CupertinoDialogAction",
    "key": "通常用于CupertinoAlertDialog的一个button"
  },
  {"title": "CupertinoSlider", "key": "从一个范围中选一个值"},
  {"title": "CupertinoSwitch", "key": "iOS风格的开关. 用于单一状态的开/关"},
  {"title": "CupertinoPageTransition", "key": "提供iOS风格的页面过度动画"},
  {
    "title": "CupertinoFullscreenDialogTransition",
    "key": "一个iOS风格的过渡，用于调用全屏对话框"
  },
  {
    "title": "CupertinoNavigationBar",
    "key": "iOS风格的导航栏. 通常和CupertinoPageScaffold一起使用"
  },
  {
    "title": "CupertinoTabBar",
    "key": "iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用"
  },
  {"title": "CupertinoPageScaffold", "key": "一个iOS风格的页面的基本布局结构。包含内容和导航栏"},
  {"title": "CupertinoTabScaffold", "key": "标签式iOS应用程序的结构。将选项卡栏放在内容选项卡之上"},
  {
    "title": "CupertinoTabView",
    "key": "支持选项卡间并行导航项卡的根内容。通常与CupertinoTabScaffolde一起使用"
  },
  {"title": "Padding", "key": "一个widget, 会给其子widget添加指定的填充"},
  {"title": "Center", "key": "将其子widget居中显示在自身内部的widget"},
  {"title": "Align", "key": "一个widget，它可以将其子widget对齐，并可以根据子widget的大小自动调整大小"},
  {"title": "FittedBox", "key": "按自己的大小调整其子widget的大小和位置"},
  {"title": "AspectRatio", "key": "一个widget，试图将子widget的大小指定为某个特定的长宽比"},
  {"title": "ConstrainedBox", "key": "对其子项施加附加约束的widget"},
  {"title": "Baseline", "key": "根据子项的基线对它们的位置进行定位的widget"},
  {
    "title": "FractionallySizedBox",
    "key":
        "一个widget，它把它的子项放在可用空间的一小部分。关于布局算法的更多细节，见RenderFractionallySizedOverflowBox"
  },
  {"title": "IntrinsicHeight", "key": "一个widget，它将它的子widget的高度调整其本身实际的高度"},
  {"title": "IntrinsicWidth", "key": "一个widget，它将它的子widget的宽度调整其本身实际的宽度"},
  {"title": "LimitedBox", "key": "一个当其自身不受约束时才限制其大小的盒子"},
  {"title": "Offstage", "key": "一个布局widget，可以控制其子widget的显示和隐藏"},
  {"title": "OverflowBox", "key": "对其子项施加不同约束的widget，它可能允许子项溢出父级"},
  {
    "title": "SizedBox",
    "key":
        "一个特定大小的盒子。这个widget强制它的孩子有一个特定的宽度和高度。如果宽度或高度为NULL，则此widget将调整自身大小以匹配该维度中的孩子的大小"
  },
  {
    "title": "SizedOverflowBox",
    "key": "一个特定大小的widget，但是会将它的原始约束传递给它的孩子，它可能会溢出"
  },
  {"title": "Transform", "key": "在绘制子widget之前应用转换的widget"},
  {"title": "CustomSingleChildLayout", "key": "一个自定义的拥有单个子widget的布局widget"},
  {"title": "Stack", "key": "可以允许其子widget简单的堆叠在一起"},
  {"title": "IndexedStack", "key": "从一个子widget列表中显示单个孩子的Stack"},
  {"title": "Flow", "key": "一个实现流式布局算法的widget"},
  {"title": "Table", "key": "为其子widget使用表格布局算法的widget"},
  {"title": "Wrap", "key": "可以在水平或垂直方向多行显示其子widget"},
  {"title": "ListBody", "key": "一个widget，它沿着一个给定的轴，顺序排列它的子元素"},
  {
    "title": "ListView",
    "key":
        "可滚动的列表控件。ListView是最常用的滚动widget，它在滚动方向上一个接一个地显示它的孩子。在纵轴上，孩子们被要求填充ListView"
  },
  {"title": "CustomMultiChildLayout", "key": "使用一个委托来对多个孩子进行设置大小和定位的小部件"},
  {"title": "LayoutBuilder", "key": "构建一个可以依赖父窗口大小的widget树"},
  {"title": "RichText", "key": "一个富文本Text，可以显示多种样式的text"},
  {"title": "DefaultTextStyle", "key": "文字样式，用于指定Text widget的文字样式"},
  {"title": "RawImage", "key": "一个直接显示dart:ui.Image的widget"},
  {
    "title": "AssetBundle",
    "key":
        "包含应用程序可以使用的资源，如图像和字符串。对这些资源的访问是异步，所以他们可以来自网络（例如，从NetworkAssetBundle）或从本地文件系统，这并不会挂起用户界面"
  },
  {"title": "Form", "key": "一个可选的、用于给多个TextField分组的widget"},
  {
    "title": "FormField",
    "key": "一个单独的表单字段。此widget维护表单字段的当前状态，以便在UI中直观地反映更新和验证错误"
  },
  {"title": "RawKeyboardListener", "key": "每当用户按下或释放键盘上的键时调用回调的widget"},
  {"title": "AnimatedContainer", "key": "在一段时间内逐渐改变其值的容器"},
  {"title": "AnimatedCrossFade", "key": "一个widget，在两个孩子之间交叉淡入，并同时调整他们的尺寸"},
  {"title": "Hero", "key": "将其子项标记为hero动画候选的widget"},
  {
    "title": "AnimatedBuilder",
    "key":
        "用于构建动画的通用小部件。AnimatedBuilder在有多个widget希望有一个动画作为一个较大的建造函数部分时会非常有用。要使用AnimatedBuilder，只需构建widget并将其传给builder函数即可"
  },
  {
    "title": "DecoratedBoxTransition",
    "key": "DecoratedBox的动画版本，可以给它的Decoration不同属性使用动画"
  },
  {"title": "FadeTransition", "key": "对透明度使用动画的widget"},
  {
    "title": "PositionedTransition",
    "key": "Positioned的动画版本，它需要一个特定的动画来将孩子的位置从动画的生命周期的起始位置移到结束位置"
  },
  {"title": "RotationTransition", "key": "对widget使用旋转动画"},
  {"title": "ScaleTransition", "key": "对widget使用缩放动画"},
  {"title": "SizeTransition", "key": "尺寸控件动画，并不是控制子控件的尺寸，而是父控件"},
  {"title": "SlideTransition", "key": "对相对于其正常位置的某个位置之间使用动画"},
  {"title": "AnimatedDefaultTextStyle", "key": "在文本样式切换时使用动画"},
  {"title": "AnimatedListState", "key": "动画列表的state"},
  {"title": "AnimatedModalBarrier", "key": "一个阻止用户与widget交互的widget"},
  {
    "title": "AnimatedOpacity",
    "key": "Opacity的动画版本，在给定的透明度变化时，自动地在给定的一段时间内改变孩子的Opacity"
  },
  {"title": "AnimatedPhysicalModel", "key": "PhysicalModel的动画版本"},
  {
    "title": "AnimatedPositioned",
    "key": "动画版本的Positioned，每当给定位置的变化，自动在给定的时间内转换孩子的位置"
  },
  {"title": "AnimatedSize", "key": "动画widget，当给定的孩子的大小变化时，它自动地在给定时间内转换它的大小"},
  {"title": "AnimatedWidget", "key": "当给定的Listenable改变值时，会重新构建该widget"},
  {"title": "AnimatedWidgetBaseState", "key": "具有隐式动画的widget的基类"},
  {"title": "LongPressDraggable", "key": "可以使其子widget在长按时可拖动"},
  {"title": "GestureDetector", "key": "一个检测手势的widget"},
  {"title": "DragTarget", "key": "一个拖动的目标widget，在完成拖动时它可以接收数据"},
  {"title": "Dismissible", "key": "可以在拖动时隐藏的widget"},
  {
    "title": "IgnorePointer",
    "key":
        "在hit test中不可见的widget。当ignoring为true时，此widget及其子树不响应事件。但它在布局过程中仍然消耗空间，并像往常一样绘制它的孩子。它是无法捕获事件对象、因为它在RenderBox.hitTest中返回false"
  },
  {
    "title": "AbsorbPointer",
    "key":
        "在hit test期间吸收(拦截)事件。当absorbing为true时，此小部件阻止其子树通过终止命中测试来接收指针事件。它在布局过程中仍然消耗空间，并像往常一样绘制它的孩子。它只是防止其孩子成为事件命中目标，因为它从RenderBox.hitTest返回true"
  },
  {"title": "Navigator", "key": "导航器，可以在多个页面(路由)栈之间跳转"},
  {"title": "Scrollable", "key": "实现了可滚动widget的交互模型，但不包含UI显示相关的逻辑"},
  {"title": "Theme", "key": "将主题应用于子widget。主题描述了应用选择的颜色和字体"},
  {"title": "MediaQuery", "key": "建立一个子树，在树中媒体查询解析不同的给定数据"},
  {"title": "Opacity", "key": "使其子widget透明的widget"},
  {"title": "DecoratedBox", "key": "在孩子绘制之前或之后绘制装饰的widget"},
  {"title": "FractionalTranslation", "key": "绘制盒子之前给其添加一个偏移转换"},
  {"title": "RotatedBox", "key": "可以延顺时针以90度的倍数旋转其子widget"},
  {"title": "ClipOval", "key": "用椭圆剪辑其孩子的widget"},
  {"title": "ClipPath", "key": "用path剪辑其孩子的widget"},
  {"title": "ClipRect", "key": "用矩形剪辑其孩子的widget"},
  {"title": "CustomPaint", "key": "提供一个画布的widget，在绘制阶段可以在画布上绘制自定义图形"},
  {
    "title": "BackdropFilter",
    "key": "一个widget，它将过滤器应用到现有的绘图内容，然后绘制孩子。这种效果是比较昂贵的，尤其是如果过滤器是non-local，如blur"
  },
  {"title": "FutureBuilder", "key": "基于与Future交互的最新快照来构建自身的widget"},
  {"title": "StreamBuilder", "key": "基于与流交互的最新快照构建自身的widget"},
  {"title": "NestedScrollView", "key": "一个可以嵌套其它可滚动widget的widget"},
  {"title": "GridView", "key": "一个可滚动的二维空间数组"},
  {
    "title": "SingleChildScrollView",
    "key": "有一个子widget的可滚动的widget，子内容超过父容器时可以滚动"
  },
  {"title": "Scrollbar", "key": "一个Material Design 滚动条，表示当前滚动到了什么位置"},
  {"title": "CustomScrollView", "key": "一个使用slivers创建自定义的滚动效果的ScrollView"},
  {"title": "NotificationListener", "key": "一个用来监听树上冒泡通知的widget"},
  {"title": "ScrollConfiguration", "key": "控制可滚动组件在子树中的表现行为"},
  {"title": "RefreshIndicator", "key": "Material Design下拉刷新指示器，包装一个可滚动widget"},
  {
    "title": "Semantics",
    "key": "一个widget，用以描述widget树的具体语义。使用辅助工具、搜索引擎和其他语义分析软件来确定应用程序的含义"
  },
  {"title": "MergeSemantics", "key": "合并其后代语义的widget"},
  {"title": "ExcludeSemantics", "key": "删除其后代所有语义的widget"},
  {"title": "http", "key": "http资源"},
  {"title": "Dio", "key": "http客户端"},
  {"title": "images_jpeg", "key": "调用原生功能进行图片缩放压缩"},
  {"title": "images_picker", "key": "从Android和ios图象库选择图像"},
  {"title": "photo", "key": "用于选择图像，并支持多选"},
  {"title": "fluttertoast", "key": "原生提示"},
  {"title": "flutter_html", "key": "显示html标签"},
  {"title": "flutter_calendar", "key": "日历组件"},
  {"title": "flutter_picker", "key": "生成自定义选择器"},
  {"title": "flutter_spinkit", "key": "炫酷的加载动画"},
  {"title": "badge", "key": "小红点插件，用来显示未读消息等"},
  {"title": "video_player", "key": "显示内嵌视频"},
  {"title": "flute_music_player", "key": "用flutter编写的自带华丽的播放界面的音频播放组件"},
  {"title": "audioplayer", "key": "播放远程或本地音频文件"},
  {"title": "fluro", "key": "路由导航框架"},
  {"title": "url_launcher", "key": "在Android和ios上启动URL，支持网络、电话、短信和电子邮件"},
  {"title": "provide", "key": "Google开发的状态管理插件"},
  {"title": "sqflite", "key": "SQLite的Flutter插件"},
  {"title": "flutter_cache_manager", "key": "管理下载到本地的文件缓存"},
  {"title": "crypto", "key": "在纯DART中实现的加解密函数库"},
  {"title": "path_provider", "key": "提供了统一的接口获取手机上的常用目录"},
  {"title": "connectivity", "key": "获取到当前设备是否联网，以及当前的网络类型是WIFI还是移动网络"},
  {"title": "device_info", "key": "用来获取手机信息，比如：手机型号、手机类型、操作系统信息"},
  {"title": "flutter_blue", "key": "蓝牙插件"},
  {"title": "share", "key": "分享插件"},
  {"title": "open_file", "key": "调用平台打开文件。比如直接打开一个apk文件会调起平台的安装向导"},
  {
    "title": "flutter_amap",
    "key": "高德地图3d flutter组件。展示原生android、ios高德地图，并与flutter交互"
  },
  {"title": "location", "key": "处理Android和iOS上的位置。它还提供位置更改时的回调"},
  {"title": "map_view", "key": "一个用于在iOS和Android上显示谷歌地图的Flutter插件"},
  {"title": "flutter_webview_plugin", "key": "允许Flutter与原生Webview进行通信的插件"},
  {"title": "fluwx", "key": "适用于Flutter的微信SDK，方便快捷"},
  {"title": "alipay_me", "key": "支付宝插件，支持登录、支付。android还支持本地计算签名"},
  {"title": "flutter_qq", "key": "QQ登录、分享到QQ、分享到QQ空间"},
];
