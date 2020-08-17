## **1 MaterialApp**
> MaterialApp 是我们app开发中常用的符合MaterialApp Design设计理念的入口Widget。 

## **2 构造函数** 
> MaterialApp({
>   Key key,
>   this.title = '', 
>   this.home,
>   this.color, 
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
