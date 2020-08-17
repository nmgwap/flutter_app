## **1 Image**
> Image是一个用于展示图片的组件。支持 JPEG、PNG、GIF、Animated GIF、WebP、Animated WebP、BMP 和 WBMP 等格式。 

## **2 构造方法** 
> Image：通过ImageProvider来加载图片
> Image.asset：用来加载本地资源图片
> Image.file：用来加载本地（File文件）图片
> Image.network：用来加载网络图片
> Image.memory：用来加载Uint8List资源（byte数组）图片

## **3 构造函数** 
> Image({
>     Key key,
>     @required this.image,
>     this.semanticLabel,
>     this.excludeFromSemantics = false,
>     this.width,
>     this.height,
>     this.color,
>     this.colorBlendMode,
>     this.fit,
>     this.alignment = Alignment.center,
>     this.repeat = ImageRepeat.noRepeat,
>     this.centerSlice,
>     this.matchTextDirection = false,
>     this.gaplessPlayback = false,
>     this.filterQuality = FilterQuality.low,
>   })
## **4 常用属性** 
### **4.1 width & height**
指Image Widget的可显示区域的宽高（并非图片的宽高）
> Image.asset(
>       "lib/assets/sample/image.jpg",
>       repeat: ImageRepeat.repeat,
>       alignment :​ Alignment.center,
> );

### **4.2 fit**
fit 设置图片的填充模式，具体由BoxFit实现
> Image.asset(
>         'lib/assets/sample/image.jpg',
>         width: AppSize.width(200),
>         height: AppSize.width(200),
>         fit: BoxFit.cover,
> ),

### **4.3 color & colorBlendMode**
这两个属性需要配合使用，对图片进行混合颜色处理
> Image.asset(
>       "lib/assets/sample/image.jpg",
>       color: Colors.blue,
>       colorBlendMode: BlendMode.saturation,
> ),

### **4.4 alignment**
用来控制图片摆放的位置
> Image.asset(
>       "lib/assets/sample/image.jpg",
>       repeat: ImageRepeat.repeat,
>       alignment : Alignment.center,
> ),

### **4.5 repeat**
用来设置图片重复显示（repeat-x水平重复，repeat-y垂直重复，repeat两个方向都重复，no-repeat默认情况不重复） 
> Image.asset(
>       "lib/assets/sample/image.jpg",
>       repeat: ImageRepeat.repeat,
> ),

### **4.6 centerSlice**
设置图片内部拉伸，相当于在图片内部设置了一个.9图，但是需要注意的是，要在显示图片的大小大于原图的情况下才可以使用这个属性，要不然会报错
> Image.asset(
>       "lib/assets/sample/image.jpg",
>       width: 400,
>       height: 400,
>       fit: BoxFit.contain,
>       centerSlice: Rect.fromLTWH(10, 10, 10, 10),
> ),