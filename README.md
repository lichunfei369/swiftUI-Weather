# swiftUI-Weather
#### ZStack VStack HStack 

- ZStack  深度布局模式  主要可以让图片在底部 
- VStack  垂直布局模式  主要是上下竖着布局 
- HStack  水平布局模式  主要是左右布局 

#### Speacer Padding 

- Speacer 让控件靠左 靠右 靠上 靠下

<img width="539" alt="image" src="https://user-images.githubusercontent.com/80322837/128802036-adcad3d9-75e7-47b4-a84c-f0b80d94b4ac.png">

- 当在VStack 最后一行添加Speacer 他将判断VStack可使用的控件 延长Y轴长出看不见的空间,他是VStack最后的控件所以会吧VStack的控件向上顶
- 添加Speacer会让stack变成整个屏幕这个时候可以指定vstack的frame大小

Padding

- Padding 可以添加间距 
- padding 可以让上下左右添加间距 如果不指定大小系统默认

<img src="/Users/apple/Library/Application Support/typora-user-images/image-20210810111555997.png"> 

- 添加到VStack中可以上下空出40距离

  ```swift
  .padding(40)
  ```

- 添加到HStack中可以左右空出40距离

  ```swift
  .padding(40)
  ```

  

- 也可以指定左右分别大小

```
.padding(.leading, 10)
.padding(.trailing, 30)
```

- 加入水平间距

```
.padding(.horizontal)
```

- 分别指定上下左右间距

```
.padding(EdgeInsets(top: 10, leading: 15, bottom: 5, trailing: 15))
```

- 指定某个地方的 padding

```
指定上面跟左右的padding为10
.padding([.top, .leading], 10)
```


