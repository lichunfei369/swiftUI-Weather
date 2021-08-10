
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
<img width="543" alt="截屏2021-08-10 上午11 27 54" src="https://user-images.githubusercontent.com/80322837/128803687-b9285ee9-12be-4813-8a37-a53de532228e.png">


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

#### Button  

```swift
 Button {

isNight.toggle()

} label:{

	WeatherButton(title: "change Dat Time ",

								textColor: .blue,

								backgroundColor: .white)

}
```

#### @state   

- @State只能用于当前视图，并且其对应的数据类型为值类型
- @State本身包含 @propertyWrapper,意味着他是一个属性包装器

1. 通过使用@State，我们可以在未使用mutating的情况下修改结构中的值
2. 当状态值发生变化后，视图会自动重绘以反应状态的变化。

```swift
struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
    
    }
}
```

属性包装器

```
@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}
```

#### @Binging  

Binding是数据的一级引用，在SwiftUI中作为数据（状态）双向绑定的桥梁，允许在不拥有数据的情况下对数据进行读写操作。我们可以绑定到多种类型，包括 State ObservedObject 等，甚至还可以绑定到另一个Binding上面。Binding本身就是一个Getter和Setter的封装。
