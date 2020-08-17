## **1 RaisedButton**
> RaisedButton组件主要用于文本布局。 

## **2 构造函数** 
> const RaisedButton({
>     Key key,
>     @required VoidCallback onPressed,
>     ValueChanged<bool> onHighlightChanged,
>     ButtonTextTheme textTheme,
>     Color textColor,
>     Color disabledTextColor,
>     Color color,
>     Color disabledColor,
>     Color highlightColor,
>     Color splashColor,
>     Brightness colorBrightness,
>     double elevation,
>     double highlightElevation,
>     double disabledElevation,
>     EdgeInsetsGeometry padding,
>     ShapeBorder shape,
>     Clip clipBehavior = Clip.none,
>     MaterialTapTargetSize materialTapTargetSize,
>     Duration animationDuration,
>     Widget child,
> })

## **3 常用属性** 
### **3.1 onPressed**
> 必填参数，按下按钮时触发的回调，接收一个方法，传null表示按钮禁用，会显示禁用相关样式

### **3.2 textColor：文本颜色**
> textColor: Colors.white,

### **3.3 color：按钮颜色**
> color: Colors.red,

### **3.4 splashColor：点击按钮时水波纹的颜色**
> splashColor: Colors.black,

### **3.5 highlightColor：高亮颜色，点击（长按）按钮后的颜色**
> highlightColor: Colors.green,

### **3.6 padding：内边距，其接收值的类型是EdgeInsetsGeometry类型的**

3.6.1 一次性设置上下左右的间距
> padding: EdgeInsets.all(20),

3.6.2 单独设置
3.6.2.1 上内边距  
> padding: EdgeInsets.only(top: 30),    

3.6.2.2 下内边距  
> padding: EdgeInsets.only(bottom: 30), 

3.6.2.3 左内边距  
> padding: EdgeInsets.only(left: 30),  

3.6.2.4 右内边距  
> padding: EdgeInsets.only(right: 30), 

3.6.3 一次性设置上下左右的间距 左上右下顺序设置
> padding: EdgeInsets.fromLTRB(0,30,20,40),

### **3.7 shape：设置按钮的形状**

3.7.1 borderRadius：设置圆角
> shape: BeveledRectangleBorder(
>     side: BorderSide(
>         color: Colors.white,
>     ),
>     borderRadius: BorderRadius.all(Radius.circular(10))
> ),

3.7.2 BeveledRectangleBorder：带斜角的长方形边框
> shape: BeveledRectangleBorder(
>     side: BorderSide(
>         color: Colors.white,
>     ),
>     borderRadius: BorderRadius.all(Radius.circular(10))
> ),

3.7.3 CircleBorder：圆形边框
> shape: CircleBorder(
>     side: BorderSide(
>         color: Colors.white,
>     ),
> ),

3.7.4 RoundedRectangleBorder：圆角矩形
> shape: RoundedRectangleBorder(
>     borderRadius: BorderRadius.all(Radius.circular(10)),
> ),

3.7.5 StadiumBorder：两端是半圆的边框
> shape: StadiumBorder(),

