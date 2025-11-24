//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by 韩飞洋 on 2025/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 添加线性颜色背景
            LinearGradient(
                gradient: Gradient(colors: [.blue, Color("LightBlue")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).ignoresSafeArea()
            VStack {
                // 修饰器的顺序影响渲染结果，比如background在frame前修饰文字，在之后修饰frame。
                Text("济南，槐荫区")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("26°C")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 15) {
                    WeatherDayView(dayOfWeek: "周一", imageName: "cloud.sun.fill", temperature: 24)
                    WeatherDayView(dayOfWeek: "周二", imageName: "cloud.fill", temperature: 20)
                    WeatherDayView(dayOfWeek: "周三", imageName: "cloud.fill", temperature: 21)
                    WeatherDayView(dayOfWeek: "周四", imageName: "cloud.rain.fill", temperature: 19)
                    WeatherDayView(dayOfWeek: "周五", imageName: "cloud.rain.fill", temperature: 22)
                    WeatherDayView(dayOfWeek: "周六", imageName: "sun.max.fill", temperature: 28)
                }
                Spacer()
                
                Button{
                   print("123")
                } label: {
                    Text("修改地点")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold))
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°C")
                .font(.system(size: 20, weight: .medium))
                .foregroundStyle(.white)
        }
    }

}
