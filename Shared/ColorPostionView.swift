//
//  ColorView.swift
//  circle
//
//  Created by taoshumin_vendor on 2022/2/22.
//

import SwiftUI

/*
 区分background与foregroundColor
 
 1.background: 为视图view本身的颜色
 2.foregroundColor: 为视图文字的颜色
 */
struct ColorView: View {
    var body: some View {
        HStack {
            Spacer()
            
            Text("背景色")
                .padding()
                .background(Color.red)
            
            Spacer()
            
            Text("形状背景").foregroundColor(.yellow).padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.red)
                        .frame(height:60)
                )
            Spacer()
        }
    }
}

/*
 设置视图的边框及圆角
 */
struct CornerContentView: View {
    var body: some View {
        Text("圆角和边框")
            .padding() // 默认是(all,10)
            .background(Color.green)
            .cornerRadius(25) //设置圆角
            .border(Color.green, width: 4) //设置边框
    }
}

/*
 设置阴影
 */

struct ShadContentView: View {
    var body: some View {
        Text("阴影1")
            .shadow(color: .red, radius: 5, x: 0, y: 0)
        
        Text("阴影2")
            .shadow(color: .red, radius: 5, x: 5, y: 5)
        
        Text("阴影3")
            .shadow(color: .red, radius: 5, x: -5, y: -5)
    }
}

/*
 Padding
 对应的是edge的边缘的位置
 */
struct PaddingContentView: View {
    var body: some View {
        VStack {
            Text("圆角和边框")
                .padding(.top,10)
                .background(Color.green)
            Spacer()
            
            Text("圆角和边框")
                .padding(.top,20)
                .background(Color.green)
            Spacer()
            
            Text("圆角和边框")
                .padding(.leading,10)
                .background(Color.green)
            Spacer()
            
            Text("圆角和边框")
                .padding(.leading,20)
                .background(Color.green)
            Spacer()
            
            Text("圆角和边框")
                .padding(.bottom,10)
                .background(Color.green)
            Spacer()
            
        }
    }
}


/*
    Offset偏移，常用
 */

struct OffsetContentView: View {
    var body: some View {
        ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.green)
                        .frame(width: 300, height: 100)
                        .offset(x: -20, y: -20)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.red)
                        .frame(width: 300, height: 100)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.purple)
                        .frame(width: 300, height: 100)
                        .offset(x: 20, y: 20)
                }
    }
}

/*
    Postion: 显示视图的在界面的绝对坐标
 */
struct PostionContentView: View {
    var body: some View {
        Text("SwiftUI")
            .background(Color.green)
                    .border(Color.red)
                    .position(x: 0, y: 100)
        
        Text("SwiftUI")
            .background(Color.green)
                    .border(Color.red)
                    .position(x: 100, y: 0)
    }
}


struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorView()
            CornerContentView()
            PaddingContentView()
            ShadContentView()
            OffsetContentView()
            PostionContentView()
        }
    }
}
