//
//  FormContentView.swift
//  circle
//
//  Created by taoshumin_vendor on 2022/2/23.
//

import SwiftUI

/*
    Form 表单视图
 */
struct FormContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Text("A")
                Text("A")
            }
        }
    }
}

struct FormContentView_Previews: PreviewProvider {
    static var previews: some View {
        FormContentView()
    }
}
