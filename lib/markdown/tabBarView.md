## **1 TabBarView**
> Tab页的内容容器，Tab页内容一般处理为随选项卡的改变而改变。 

## **2 构造函数** 
> TabBarView({
>     Key key,
>     @required this.children,//Tab页内容组件的数组集合
>     this.controller,//TabController对象
>     this.physics,
> })

## **3 常用属性** 
### **3.1 controller：指定视图的控制器**
> controller: 1,

### **3.2 children：视图组件的child为一个列表，一个选项卡对应一个视图**
> children:[],
