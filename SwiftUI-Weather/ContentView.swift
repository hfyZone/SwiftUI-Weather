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
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).ignoresSafeArea()
            VStack(spacing: 10) {
                // 修饰器的顺序影响渲染结果，比如background在frame前修饰文字，在之后修饰frame。
                Text("济南，槐荫区")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                }
                Text("26°C")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundStyle(.white)
                Spacer()
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
