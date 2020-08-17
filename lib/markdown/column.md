## **1 Column**
> Column是在垂直方向上排列子widget的列表。 

## **2 构造函数** 
> Column({
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
### **3.1 crossAxisAlignment：子组件沿着 Cross 轴（在 Column 中是纵轴）如何摆放，其实就是子组件对齐方式**

3.1.1 垂直主轴方向(水平方向)左侧对齐
> CrossAxisAlignment:CrossAxisAlignment.start,

3.1.2 垂直主轴方向(水平方向)右侧对齐
> CrossAxisAlignment:CrossAxisAlignment.end,

3.1.3 垂直主轴方向(水平方向)居中对齐
> CrossAxisAlignment: CrossAxisAlignment.center,

3.1.4 垂直主轴方向(水平方向)拉伸子child
> CrossAxisAlignment:CrossAxisAlignment.stretch,

3.1.5 这个要和textBaseline一起使用
> CrossAxisAlignment:CrossAxisAlignment.baseline,

### **3.2 mainAxisAlignment：子组件沿着 Main 轴（在 Column 中是横轴）如何摆放，其实就是子组件排列方式**

3.2.1 沿着主轴方向(垂直方向)顶部对齐
> mainAxisAlignment:MainAxisAlignment.start,

3.2.2 沿着主轴方向(垂直方向)底部对齐
> mainAxisAlignment:MainAxisAlignment.end,

3.2.3 沿着主轴方向(垂直方向)居中对齐
> mainAxisAlignment:MainAxisAlignment.center,

3.2.4 把剩余空间平分成n份，n是子widget的数量，然后把其中一份空间分成2份，放在第一个child的前面，和最后一个child的后面
> mainAxisAlignment:MainAxisAlignment.spaceAround,

3.2.5 沿着主轴方向(垂直方向)平分剩余空间
> mainAxisAlignment:MainAxisAlignment.spaceBetween,

3.2.6 把剩余空间平分n+1份，然后平分所有的空间，请注意和spaceAround的区别
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

3.5.1 Column 从下至上开始摆放子组件，此时我们看到的底部其实是顶部
> verticalDirection: VerticalDirection.up,

3.5.2 Column 从上至下开始摆放子组件，此时我们看到的顶部就是顶部
> verticalDirection: VerticalDirection.down,

### **3.6 children column的子widget**
> children: <Widget>[],