## **1 TabBar**
> 一个显示水平选项卡的Material Design widget。

## **2 构造函数** 
> TabBar({
>     Key key,
>     @required this.tabs,
>     this.controller,
>     this.isScrollable = false,
>     this.indicatorColor,
>     this.indicatorWeight = 2.0,
>     this.indicatorPadding = EdgeInsets.zero,
>     this.indicator,
>     this.indicatorSize,
>     this.labelColor,
>     this.labelStyle,
>     this.labelPadding,
>     this.unselectedLabelColor,
>     this.unselectedLabelStyle,
>     this.dragStartBehavior = DragStartBehavior.start,
>     this.onTap,
> })
## **3 常用属性** 
### **3.1 tabs：显示的标签内容**
> tabs = <Tab>[
>     Tab(text: "Tab1",),
>     Tab(text: "Tab2",),
> ],

### **3.2 isScrollable：是否可滚动**
> isScrollable: false,

### **3.3 indicatorColor：指示器颜色**
> indicatorColor: Color(0xffff0000),

### **3.4 indicatorWeight：指示器高度**
> indicatorWeight: 1,

### **3.5 indicatorPadding：底部指示器的Padding**
> indicatorPadding: EdgeInsets.only(bottom: 10.0),
 
### **3.6 indicatorSize：指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽**
> indicatorSize: TabBarIndicatorSize.tab,

### **3.7 labelColor：选中label颜色**
> labelColor: Color(0xff333333),

### **3.8 labelStyle：选中label的Style**
> labelStyle: TextStyle(
>     fontSize: 15.0,
> ),

### **3.9 labelPadding：每个label的padding值**
> labelPadding: EdgeInsets.only(left: 20),

### **3.10 unselectedLabelColor：未选中label颜色**
> unselectedLabelColor: Color(0xffffffff),

### **3.10 unselectedLabelColor：未选中label的Style**
> unselectedLabelStyle: TextStyle(
>     fontSize: 12.0,
> ),

## **4 EdgeInsets** 
edgeInsets是Widget的配置类，允许文本方向感知分辨率。
提供的配置方法：
### **4.1 分别指定四个方向的填充**
> EdgeInsets.fromLTRB(double left, double top, double right, double bottom)

### **4.2 所有方向均使用相同数值的填充**
> EdgeInsets.all(doube value)

### **4.3 可以设置具体某个方向的填充(可以同时指定多个方向)**
> EdgeInsets.only(top:0,right:0,bottom:0,left:0)

### **4.4 用于设置对称方向的填充，vertical指top和bottom，horizontal指left和right**
> EdgeInsets.symmeric(vertical:0,horizontal:0)