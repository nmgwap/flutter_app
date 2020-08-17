## **1 AppBar**
> 一个典型的AppBar，带有标题、操作和溢出的下拉菜单。

## **2 构造函数** 
> AppBar({
>     Key key,
>     this.leading,
>     this.automaticallyImplyLeading = true,
>     this.title,
>     this.actions,
>     this.flexibleSpace,
>     this.bottom,
>     this.backgroundColor,
>     this.brightness,
>     this.iconTheme,
>     this.textTheme,
>     this.primary = true,
>     this.centerTitle,
>     this.titleSpacing = NavigationToolbar.kMiddleSpacing,
>     this.toolbarOpacity = 1.0,
>     this.bottomOpacity = 1.0,
> })

## **3 常用属性** 
### **3.1 tleading：在标题前面显示的一个控件，在首页通常显示应用的 logo；在其他界面通常显示为返回按钮**
> leading: IconButton(
>     icon: Icon(Icons.menu),
>     onPressed: () {},
> ),

### **3.2 title：标题，通常显示为当前界面的标题文字，可以放组件**
> title: "AppBarWidget",

### **3.3 actions：通常使用 IconButton 来表示，可以放按钮组**
> actions: <Widget>[
>     IconButton(
>         icon: Icon(Icons.search),
>         onPressed: () {},
>     ),
>     IconButton(
>         icon: Icon(Icons.more_horiz),
>         onPressed: () {},
>     )
> ],

### **3.4 bottom：通常放 tabBar，标题下面显示一个 Tab 导航栏** 
> bottom:<Widget>[],

### **3.5 backgroundColor：导航背景颜色**
> backgroundColor: Colors.redAccent,

### **3.6 centerTitle： 标题是否居中显示，默认值根据不同的操作系统，显示方式不一样**
> centerTitle: true,