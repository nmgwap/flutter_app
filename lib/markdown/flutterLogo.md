## **1 FlutterLogo**
> FlutterLogo是一个显示Flutter 商标的组件。

## **2 构造函数** 
> FlutterLogo({
>     Key key,
>     this.size,
>     this.colors,
>     this.textColor = const Color(0xFF616161),
>     this.style = FlutterLogoStyle.markOnly,
>     this.duration = const Duration(milliseconds: 750),
>     this.curve = Curves.fastOutSlowIn,
> }) 


## **3 常用属性** 
### **3.1 size：尺寸**
> size: 60,

### **3.2 colors：颜色**
> colors: Colors.red,

### **3.3 textColor：绘制“Flutter”文本的颜色**
> textColor:Color(0xFF616161),

### **3.4 style：否以及在何处绘制“颤动”文本。默认情况下，仅绘制徽标本身**
> style: FlutterLogoStyle.horizontal,

### **3.5 duration：如果更改样式，颜色或 textColor属性，则动画的时间长度**
> duration: Duration(seconds: 200),

### **3.6 curve：如果样式，颜色或textColor 发生更改，则会生成徽标动画的曲线。**
> curve: Curves.decelerate,