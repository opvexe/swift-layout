//
//  TableContentView.swift
//  circle
//
//  Created by taoshumin_vendor on 2022/2/23.
//

import SwiftUI

/*
    TableView 与之前OC 不同，可以理解为TableController
 */
struct TableContentView: View {
    var body: some View {
        TabView {
            Text("First View")
                .font(.title)
                .tabItem({ Text("First") })
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem({ Text("Second") })
                .tag(1)
        }
    }
}

/*
    文本图像显示
 */
struct TableImageTitleCotentView: View {
    var body: some View {
        TabView {
            Text("First View")
                .font(.title)
                .tabItem({
                    Image(systemName: "circle")
                    Text("First")
                })
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem({  // 默认是VStack，怎么改都是
                    VStack {
                        Image(systemName: "circle")
                        Text("Second")
                    }
                })
                .tag(1)
        }
    }
}
struct TableContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TableContentView()
            TableImageTitleCotentView()
        }
    }
}
