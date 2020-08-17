## **1 Scaffold**
> Scaffold 翻译过来就是脚手架的意思，它实现了基本的 Material Design 可视化布局结构。此类提供了用于显示drawer、snackbar和底部sheet的API。简单的说，Scaffold就是一个提供 Material Design 设计中基本布局的 widget。

## **2 构造函数** 
> Scaffold({
>   Key key,
>   this.appBar, 
>   this.body,  
>   this.floatingActionButton, 
>   this.floatingActionButtonLocation, 
>   this.floatingActionButtonAnimator, 
>   this.persistentFooterButtons, 
>   this.drawer, 
>   this.endDrawer, 
>   this.bottomNavigationBar,
>   this.bottomSheet, 
>   this.backgroundColor,
>   this.resizeToAvoidBottomPadding = true, 
>   this.primary = true,
> }) 

## **3 常用属性** 
### **3.1 appBar：显示在界面顶部的一个 AppBar**
> appBar: AppBar(
>     title: Text(
>         "Flutter Demo"
>     ),
> ),

### **3.2 body：当前界面所显示的主要内容 Widget**
> body: Center(
>     child: Text(
>         'Hello Flutter'
>     ),
> ),

### **3.3 drawer：侧边栏控件**
> drawer: Drawer(
>     child: Center(
>         child: Text('Drawer'),
>     ),
> ),

### **3.4 bottomNavigationBar：底部导航栏**
> bottomNavigationBar: new BottomNavigationBar(
>     currentIndex: 1,//默认选中的位置
>     fixedColor: Colors.green,//选中的颜色
>     items:<BottomNavigationBarItem>[
>         new BottomNavigationBarItem(
>             icon:new Icon(
>                 Icons.airplay,
>             ),
>             title: new Text(
>                 '主页',
>             ),
>          ),
>          ......
>     ] ,
> ),

### **3.5 floatingActionButton：定义浮动在 body 右下角的组件**
> floatingActionButton: FloatingActionButton(
>     onPressed: (){},
>     child: Text('点击'),
> ),
