//
//  ListContentView.swift
//  circle
//
//  Created by taoshumin_vendor on 2022/2/23.
//

import SwiftUI
import Combine

/*
 定义数据Model
 */
struct ListModel: Identifiable{
    var id  = UUID()
    var task : String
    var imageName : String
}

/*
    定义假数据，数据列表
 */
let ListModels = [
    ListModel(task: "写一篇SwiftUI文章", imageName: "pencil.circle"),
    ListModel(task: "看WWDC视频", imageName: "square.and.pencil"),
    ListModel(task: "定外卖", imageName: "folder"),
    ListModel(task: "关注OldBirds公众号", imageName: "link"),
    ListModel(task: "6点半跑步2公里", imageName: "moon"),
]

/*
 动态列表
 */
struct ListContentView: View {
    @State private var isShow = false
    
    var body: some View {
        List{
            Toggle(isOn: $isShow) {
                Text("展示")
            }
            ForEach(ListModels) { item in
                HStack {
                    Image(systemName: item.imageName)
                    
                    if self.isShow {
                        Text(item.task)
                    }
                }
            }
        }
    }
}

/*
    动态列表添加分区
 */

struct ListSectionContentView: View {
    var body: some View {
        List {
            Section(header: Text("代办事项")) {
                ForEach(ListModels) { item in
                    HStack {
                        Image(systemName: item.imageName)
                        Text(item.task)
                    }
                }
            }
            
            Section(header: Text("其他内容")) {
                Text("Hello Word")
            }
        }
        .listStyle(GroupedListStyle())
    }
}

/*
    请求加载数据
 */
class Update: ObservableObject{
    var didChange = PassthroughSubject<Void,Never>()
    
    /*
        数据更新后就刷新页面
     */
    @Published var updates: [ListModel] {
        didSet{
            self.didChange.send()
        }
    }
    
    /*
        初始化数据
     */
    init(updates: [ListModel]){
        self.updates = updates
    }
}


struct ListBindContentView: View {
    @ObservedObject var models = Update(updates: ListModels)
    var body: some View {
        List {
            ForEach(models.updates) { item in
                HStack {
                    Image(systemName: item.imageName)
                    Text(item.task)
                }
            }
        }
    }
}

struct ListContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListContentView()
            ListSectionContentView()
            ListBindContentView()
        }
    }
}
