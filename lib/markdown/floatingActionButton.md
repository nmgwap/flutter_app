## **1 FloatingActionButton**
> FloatingActionButton（FAB） 控件是一个纸墨设计中定义的 FAB 按钮。用来显示界面上的主要功能。

## **2 构造函数** 
> FloatingActionButton({
>    Key key,
>    this.child,
>    this.tooltip,
>    this.foregroundColor,
>    this.backgroundColor,
>    this.heroTag = const _DefaultHeroTag(),
>    this.elevation = 6.0,
>    this.highlightElevation = 12.0,
>    @required this.onPressed,
>    this.mini = false,
>    this.shape = const CircleBorder(),
>    this.clipBehavior = Clip.none,
>    this.materialTapTargetSize,
>    this.isExtended = false,
> })

## **3 常用属性** 
### **3.1 child： FAB 中的子 Widget**
> child:Text("Flutter Demo"),

### **3.2 tooltip： 长按 FAB 所显示的提示文字**
> tooltip: "按这么长时间干嘛",

### **3.3 foregroundColor： FAB 的前景色**
> foregroundColor: Colors.red,

### **3.4 backgroundColor： FAB 的背景颜色**
> backgroundColor: Colors.red,

### **3.5 mini： 只能 FAB 样式是默认样式还是迷你样式**
> mini: true,

### **3.5 elevation：未点击时阴影值**
> elevation: 6.0,

### **3.5 highlightElevation：点击下阴影值**
> highlightElevation: 12.0,