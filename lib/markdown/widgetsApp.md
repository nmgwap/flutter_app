## **1 WidgetsApp**
> 未经过改装的MaterialApp 可以说MaterialApp基于WidgetsApp

## **2 构造函数** 
> MaterialApp({
>   Key key,
>   this.title = '', 
>   this.home,
>   this.color, 
>   this.textStyle
>   this.theme, 
>   this.routes = const <String, WidgetBuilder>{}, 
>   this.navigatorKey, 
>   this.initialRoute, 
>   this.onGenerateRoute, 
>   this.onUnknownRoute, 
>   this.navigatorObservers = const <NavigatorObserver>[], 
>   this.builder, 
>   this.onGenerateTitle, 
>   this.locale, 
>   this.localizationsDelegates, 
>   this.localeListResolutionCallback, 
>   this.localeResolutionCallback, 
>   this.supportedLocales = const <Locale>[Locale('en', 'US')], 
>   this.debugShowMaterialGrid = false, 
>   this.showPerformanceOverlay = false, 
>   this.checkerboardRasterCacheImages = false, 
>   this.checkerboardOffscreenLayers = false, 
>   this.showSemanticsDebugger = false,
>   this.debugShowCheckedModeBanner = true, 
>   this.debugShowWidgetInspector
> }) 

## **3 常用属性** 
### **3.1 title：安卓手机任务管理页面所看到应用的名字**
> title:Text("Flutter Demo"),

### **3.2 home：app运行时打开的首页面**
> home: MyApp(),

### **3.3 routes：定义路由**
> 内容为map健值对；key为路由名称，value为路由对应的页面。页面需要跳转时，可以通过Navigator.pushNamed(context, 'rooteName');来跳转,

### **3.4 theme：定义主题**
> theme: ThemeData(
>     primaryColor: Colors.red,
> ),

### **3.5 debugShowWidgetInspector**
> 当为true时，打开检查覆盖，该字段只能在检查模式下可用

### **3.6 inspectorSelectButtonBuilder**
> 构建一个视图与视图切换的小部件，可以通过该小部件或按钮切换到检查模式（debugShowWidgetInspector==true时才有效，点击该按钮之后再点击你要检查的视图）

### **3.7 debugShowMaterialGrid**
> 该字段开启后，会在WidgetsApp外层包裹GridPaper，这个部件主要显示网格

### **3.8 initialRoute**
> 指定默认显示的路由名字，默认值为 Window.defaultRouteName

### **3.9 onGenerateRoute**
> 路由回调函数