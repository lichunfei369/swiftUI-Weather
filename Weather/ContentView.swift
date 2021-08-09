//
//  ContentView.swift
//  Weather
//
//  Created by lichunfei on 2021/8/9.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            VStack{
                
                CityTextView(cityName: "China")
           
                MainWeatherStatusView(imaheName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 25)
                
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "哈尔滨",
                                   imageName:"cloud.sun.fill",
                                   temperature:23)
                    
                    WeatherDayView(dayOfWeek: "湖北",
                                   imageName:"cloud.snow.fill",
                                   temperature:32)
                    
                    WeatherDayView(dayOfWeek: "宁波",
                                   imageName:"cloud.hail.fill",
                                   temperature:27)
                    
                    WeatherDayView(dayOfWeek: "北京",
                                   imageName:"cloud.moon.rain.fill",
                                   temperature:27)
                    
                    WeatherDayView(dayOfWeek: "上海",
                                   imageName:"cloud.moon.fill",
                                   temperature:28)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label:{
                    WeatherButton(title: "change Dat Time ",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView:View{
    
    var dayOfWeek:String
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16 ,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct  BackgroundView :View{
    
//    var topColor:Color
//    var bottomColor:Color
   @Binding  var isNight: Bool
    
    var body: some View {
        //设置渐变色
        LinearGradient(gradient: Gradient(colors:[isNight ? .black : .blue,
                                          isNight ? .gray : .white]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
    
}

struct  CityTextView:View {
    var cityName:String
     
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct  MainWeatherStatusView:View {
    var imaheName:String
    var temperature: Int
    
    var body: some View{
        
        VStack(spacing:8){
            Image(systemName: imaheName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
            
        }
        
        .padding(.bottom,40)
    }
}

struct WeatherButton:View {
    var title: String
    var textColor:Color
    var backgroundColor:Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50, alignment: .center)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold ,design: .default))
            .cornerRadius(10.0)
    }
    
}
