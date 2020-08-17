## **1 Row**
> Row是一个用于水平展示多个子控件的控件。row这个控件不会滚动。如果你有一行控件在空间不足的情况下可以滚动，考虑使用ListView类。 

## **2 构造函数** 
> Row({
>     Key key,
>     MainAxisAlignment mainAxisAlignment,
>     MainAxisSize mainAxisSize,
>     CrossAxisAlignment crossAxisAlignment,
>     TextDirection textDirection,
>     VerticalDirection verticalDirection,
>     TextBaseline textBaseline,
>     List<Widget> children = const <Widget>[],
>   })

## **3 常用属性** 
### **3.1 crossAxisAlignment：子组件沿着 Cross 轴（在 Row 中是纵轴）如何摆放，其实就是子组件对齐方式**

3.1.1 子组件在 Row 中顶部对齐
> CrossAxisAlignment:CrossAxisAlignment.start,

3.1.2 子组件在 Row 中底部对齐
> CrossAxisAlignment:CrossAxisAlignment.end,

3.1.3 子组件在 Row 中居中对齐
> CrossAxisAlignment: CrossAxisAlignment.center,

3.1.4 拉伸填充满父布局
> CrossAxisAlignment:CrossAxisAlignment.stretch,

3.1.5 在 Row 组件中会报错
> CrossAxisAlignment:CrossAxisAlignment.baseline,

### **3.2 mainAxisAlignment：子组件沿着 Main 轴（在 Row 中是横轴）如何摆放，其实就是子组件排列方式**

3.2.1 靠左排列
> mainAxisAlignment:MainAxisAlignment.start,

3.2.2 靠右排列
> mainAxisAlignment:MainAxisAlignment.end,

3.2.3 居中排列
> mainAxisAlignment:MainAxisAlignment.center,

3.2.4 每个子组件左右间隔相等，也就是 margin 相等
> mainAxisAlignment:MainAxisAlignment.spaceAround,

3.2.5 两端对齐，也就是第一个子组件靠左，最后一个子组件靠右，剩余组件在中间平均分散排列
> mainAxisAlignment:MainAxisAlignment.spaceBetween,

3.2.6 每个子组件平均分散排列，也就是宽度相等
> mainAxisAlignment:MainAxisAlignment.spaceEvenly,

### **3.3 mainAxisSize：Main 轴大小**

3.3.1 相当于 Android 的 match_parent
> mainAxisSize:MainAxisSize.max,

3.3.2 相当于 Android 的 wrap_content
> mainAxisSize:MainAxisSize.min,

### **3.4 textDirection：子组件排列顺序**

3.4.1 从左往右开始排列
> textDirection: TextDirection.ltr,

3.4.2 从右往左开始排列
> textDirection: TextDirection.rtl,

### **3.5 verticalDirection：确定如何在垂直方向摆放子组件，以及如何解释 start 和 end，指定 height 可以看到效果**

3.5.1 Row 从下至上开始摆放子组件，此时我们看到的底部其实是顶部
> verticalDirection: VerticalDirection.up,

3.5.2 Row 从上至下开始摆放子组件，此时我们看到的顶部就是顶部
> verticalDirection: VerticalDirection.down,

### **3.6 children Row的子widget**
> children: <Widget>[],