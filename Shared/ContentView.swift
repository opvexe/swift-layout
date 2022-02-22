//
//  ContentView.swift
//  Shared
//
//  Created by taoshumin_vendor on 2022/2/22.
//

import SwiftUI

/*
 Section 视图布局,区分VStack布局
 */
struct VStackContentView: View {
    var body: some View {
        Section {
            Text("VStack")
        } header: {
            /*
                VStack: 垂直对齐
                alignment:
                    - trailing: 水平头部对齐
                    - center: 水平居中对齐
                    - trailing: 水平尾部对齐
             */
            HStack {
                VStack(alignment: .leading, spacing: 10.0, content: {
                    Text("镜像名称镜像名称")
                    Text("镜像仓库")
                    Text("镜像版本")
                    Text("镜像ID我")
                    Text("创建时间")
                })
                    .background(Color.yellow)
                
                Spacer()
                
                VStack(alignment: .center, spacing: 20.0, content: {
                    Text("镜像名称镜像名称")
                    Text("镜像仓库")
                    Text("镜像版本")
                    Text("镜像ID我")
                    Text("创建时间")
                })
                    .background(Color.red)
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 30.0, content: {
                    Text("镜像名称镜像名称")
                    Text("镜像仓库")
                    Text("镜像版本")
                    Text("镜像ID我")
                    Text("创建时间")
                })
                    .background(Color.green)
                
                Spacer()
            }
        }
    }
}

/*
    Section 视图布局,区分HStack布局
 */
struct HStackContentView: View {
    var body: some View {
        Section {
            Text("HStack")
        } header: {
            VStack {
                /*
                 HStack: 水平对齐
                 alignment：字体分行展示的时候，
                     - top : 字体头部对齐
                     - center: 字体居中对齐
                     - bottom: 字体底部对齐
                 */
                HStack(alignment: .top, spacing: 40.0) {
                    Text("镜像名称")
                    Text("镜像仓库")
                    Text("镜像版本")
                    Text("镜像ID我")
                    Text("创建时间")
                }
                .padding(.bottom,10)
                .background(Color.orange)
                
                HStack(alignment: .center, spacing: 40.0) {
                    Text("镜像名称")
                    Text("镜像仓库")
                    Text("镜像版本")
                    Text("镜像ID我")
                    Text("创建时间")
                }
                .padding(.bottom,20)
                .background(Color.red)
                
                HStack(alignment: .bottom, spacing: 40.0) {
                    Text("镜像名称")
                    Text("镜像仓库")
                    Text("镜像版本")
                    Text("镜像ID我")
                    Text("创建时间")
                }
                .padding(.bottom,30)
                .background(Color.yellow)
            }
        }

    }
}

/*
    Section 视图布局,区分ZStack布局
    叠加状态
 */
struct ZStackContentView: View {
    var body: some View {
        Section {
            Text("ZStack")
        } header: {
            ZStack(alignment: .trailing) {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStackContentView()
            HStackContentView()
            ZStackContentView()
        }
    }
}
