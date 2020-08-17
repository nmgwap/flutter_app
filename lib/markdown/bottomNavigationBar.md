## **1 BottomNavigationBar**
> 显示在应用程序的底部，用于在少量视图中进行选择，通常在三到五之间。

## **2 构造函数** 
> BottomNavigationBar({
>     Key key, 
>     @required List<BottomNavigationBarItem> items, 
>     ValueChanged<int> onTap, 
>     int currentIndex: 0, 
>     double elevation: 8.0, 
>     BottomNavigationBarType type, 
>     Color fixedColor, 
>     Color backgroundColor, 
>     double iconSize: 24.0, 
>     Color selectedItemColor, 
>     Color unselectedItemColor, 
>     double selectedFontSize: 14.0, 
>     double unselectedFontSize: 12.0, 
>     bool showSelectedLabels: true, 
>     bool showUnselectedLabels 
> })

## **3 常用属性** 
### **3.1 backgroundColor：背景颜色**
> backgroundColor: Colors.white,

### **3.2 currentIndex：项目索引**
> currentIndex:0,

### **3.3 elevation ：底部导航栏的Z坐标**
> elevation:8.0,

### **3.4 fixedColor：选中项目颜色的值（只读）** 
> fixedColor:Colors.green,

### **3.5 iconSize：所有BottomNavigationBarItem图标的大小**
> iconSize: 24.0,

### **3.6 items：定义在底部导航栏中排列的按钮项的外观**
> items: [
>     BottomNavigationBarItem(
>         icon: Icon(Icons.home),
>         title: Text('首页'),
>     ),
>     BottomNavigationBarItem(
>         icon: Icon(Icons.category),
>         title: Text('分类'),
>     ),
>     BottomNavigationBarItem(
>         icon: Icon(Icons.settings),
>         title: Text('设置'),
>     ),
> ],

### **3.7 selectedFontSize：选中时BottomNavigationBarItem标签的字体大小**
> selectedFontSize: 24.0,

### **3.8 selectedItemColor：选中时BottomNavigationBarItem.icon和BottomNavigationBarItem.label的颜色**
> selectedItemColor: Colors.green,

### **3.9 showSelectedLabels：是否为未选择的BottomNavigationBarItems显示标签**
> showSelectedLabels: true,

### **3.10 showUnselectedLabels：是否为选定的BottomNavigationBarItem显示标签**
> showUnselectedLabels: true,

### **3.11 unselectedFontSize：未选中BottomNavigationBarItem标签的字体大小**
> unselectedFontSize: 12.0,

### **3.12 unselectedItemColor：未选中的BottomNavigationBarItem.icon和BottomNavigationBarItem.labels的颜色**
> unselectedItemColor: Colors.green,