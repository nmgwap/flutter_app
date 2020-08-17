## **1 Container**
> Container类似于iOS中的UIView，具有绘制、定位、调整大小功能。通常用来装载其它子控件，假如Container没有子控件，它将自动填充整个屏幕；反之，会根据子控件大小，调整自身大小，从而达到自适应效果。

**注意:** 使用Container时，通常要有一个父控件，一般情况下不单独使用Container。常用的父控件有Center widget、Padding Widget、Column Widget、Row Widget、Scaffold Widget。  

## **2 构造函数** 
>  Container({
>     this.alignment, 
>     this.padding, 
>     Color color, 
>     Decoration decoration, 
>     Decoration foregroundDecoration, 
>     double width,
>     double height, 
>     BoxConstraints constraints, 
>     this.margin,
>     this.transform, 
>     this.child,
> })

## **3 常用属性** 
### **3.1 alignment设置子widget的在container中的对齐方式**

3.1.1 居中下对齐
> alignment:Alignment.bottomCenter,

3.1.2 左下角对齐
> alignment:Alignment.bottomLeft,

3.1.3 右下角对齐
> alignment:Alignment.bottomRight,

3.1.4 居中对齐
> alignment:Alignment.center,

3.1.5 居中左对齐
> alignment:Alignment.centerLeft,

3.1.6 居中右对齐
> alignment:Alignment.centerRight,

3.1.7 居中上对齐
> alignment:Alignment.topCenter,

3.1.8 右上角对齐
> alignment:Alignment.topRight,

3.1.9 左上角对齐
> alignment:Alignment.topLeft,

### **3.2 padding:设置container的内边距**

3.2.1 根据需求设置
> padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0,right: 10.0)
这里的top，bottom，left，right可以根据自己需求设置，不一定每个都要设置，不设置的就是0.0。

3.2.2 转圈设置
> padding:EdgeInsets.fromLTRB(20.0, 20.0, 30.0, 20.0)
LTRB分别代表left,top,right,bottom。

3.2.3 水平垂直方向设置
> padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0)
vertical代表垂直方向，horizontal代表水平方向。

### **3.3 margin:设置container的外边距**

3.3.1 根据需求设置
> margin: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0,right: 10.0)
这里的top，bottom，left，right可以根据自己需求设置，不一定每个都要设置，不设置的就是0.0。

3.3.2 转圈设置
> margin:EdgeInsets.fromLTRB(20.0, 20.0, 30.0, 20.0)
LTRB分别代表left,top,right,bottom。

3.3.3 水平垂直方向设置
> margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0)
vertical代表垂直方向，horizontal代表水平方向。

### **3.4 color:设置container的背景颜色**

3.4.1 十六进制表示方法
> color: Color(0xffFFFFFF)
这里的0x是固定的，ff代表颜色的透明度，后面的六位代表颜色的值。

3.4.2 ARGB表示方法
> color: Color.fromARGB(2, 29, 30, 10)
A透明度，取值范围是0～255；
R红色，取值范围是0～255；
G绿色，取值范围是0～255；
B蓝色，取值范围是0～255；

3.4.3 RGBO表示方法
> color: Color.fromRGBO(20, 30, 100, .9)
R红色，取值范围是0～255；
G绿色，取值范围是0～255；
B蓝色，取值范围是0～255；
O透明度，取值范围是0～1；

### **3.5 width：container的宽**
> width: 250,

### **3.6 height：container的高**
> height: 250,

### **3.7 child：container的子widget**
> child: Text("内容"),