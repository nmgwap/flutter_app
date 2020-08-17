## **1 Text**
> Text组件主要用于文本布局。 

## **2 构造函数** 
> Text({
>     Key key,
>     this.style
>     this.textAlign,
>     this.textDirection,
>     this.softWrap,
>     this.overflow,
>     this.textScaleFactor,
>     this.maxLines,
> })

## **3 常用属性** 
### **3.1 textAlign：对齐方式**

3.1.1 顶部对齐
> textAlign:TextAlign.start,

3.1.2 底部对齐
> textAlign:TextAlign.end,

3.1.3 居中对齐
> textAlign: TextAlign.center,

3.1.4 左对齐
> textAlign:TextAlign.left,

3.1.5 右对齐
> textAlign:TextAlign.right,

3.1.6 两端贴边对齐
> textAlign:TextAlign.justify,

### **3.2 textDirection：排列顺序**

3.4.1 从左往右开始排列
> textDirection: TextDirection.ltr,

3.4.2 从右往左开始排列
> textDirection: TextDirection.rtl,

### **3.3 softWrap：是否自动换行**
> softWrap:false,

### **3.4 overflow：截取部分展示**

3.4.1 直接截取
> overflow: TextOverflow.clip,

3.4.2 渐隐 
> overflow: TextOverflow.fade,

3.4.3 省略号 
> overflow: TextOverflow.ellipsis,

### **3.5 textScaleFactor：字体缩放**
> textScaleFactor: 2.0,

### **3.6 maxLines：显示到最大行数**
> maxLines: 2,

### **3.7 semanticsLabel：该文本的另一种语义标签**
> semanticsLabel: '语义标签',