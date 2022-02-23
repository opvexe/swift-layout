//
//  StateContentView.swift
//  circle
//
//  Created by taoshumin_vendor on 2022/2/23.
//

import SwiftUI

/*
    状态绑定
 */
struct StateBindView: View {
    @State var show = false
    var body: some View {
        VStack {
            Button("click"){
                self.show.toggle()
            }
          BindView(show: $show)
        }
    }
}

struct BindView: View {
    @Binding var show : Bool
    var body: some View {
        if show {
            Text("展示")
        }else{
            Text("不展示")
        }
    }
}

/*
 设置事件状态
 */
struct StateContentView: View {
    @State var change: Bool = false
    var body: some View {
        VStack {
            Text(change ? "True": "False")
                .font(.title)
                .bold()
            
            Button("Click"){
                self.change.toggle()
            }
        }
    }
}

/*
 自定义Button
 */
struct CustomButton: View {
    var body: some View {
        VStack {
            
            // 简单自定义Button
            Button(action: {
                
            }, label: {
                // 默认是水平居中对齐
                Image(systemName: "clock")
                Text("Click Me")
                Text("Subtitle")
            })
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            
            
            // 边框自定义Button
            Button {
                print("Cick")
            } label: {
                HStack {
                    Image(systemName: "trash")
                    Text("Hello World")
                        .foregroundColor(.black)
                        .font(.title)
                }
            }
            .padding()
            .background(Color.purple)
            .border(Color.red, width: 5)
            
        }
    }
}



struct StateContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StateBindView()
            StateContentView()
            CustomButton()
        }
    }
}
