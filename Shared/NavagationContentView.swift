//
//  NavagationContentView.swift
//  circle
//
//  Created by taoshumin_vendor on 2022/2/23.
//

import SwiftUI

/*
 新版导航栏
 */
struct NavagationContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello World")
            }
            .navigationBarTitle(Text("Navigation Title")) // 默认使用大标题样式
        }
    }
}

/*
 老版本导航栏
 */
struct OldNavagationContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello World")
            }
            .navigationBarTitle(Text("Navigation Title"), displayMode: .inline)
        }
    }
}

/*
 导航栏添加按钮
 */
struct NavagationItemContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello World")
            }
            .navigationBarItems(leading:
              Button(action: {
                print("Left")
            }, label: {
                Text("左侧")
            }), trailing:
                Button(action: {
                print("Right")
            }, label: {
                Text("右侧")
            }))
            .navigationBarTitle(Text("Navigation Title"))
        }
    }
}

struct NavagationContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavagationContentView()
            OldNavagationContentView()
            NavagationItemContentView()
        }
    }
}
