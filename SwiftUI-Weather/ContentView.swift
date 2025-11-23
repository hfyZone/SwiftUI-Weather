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
            VStack {
                // 修饰器的顺序影响渲染结果，比如background在frame前修饰文字，在之后修饰frame。
                Text("济南，槐荫区")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 200)
                    .background(.red)
            }
        }
    }
}

#Preview {
    ContentView()
}
