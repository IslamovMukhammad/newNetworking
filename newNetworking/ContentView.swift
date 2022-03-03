//
//  ContentView.swift
//  newNetworking
//
//  Created by Muhammad Islamov on 03/03/22.
//

import SwiftUI
import Alamofire

struct ContentView: View {

    @ObservedObject var viewModel = PostViewModal()

    var body: some View {
      NavigationView{
        Text("Hello, world!")
            .padding()
      }.onAppear{

//        self.viewModel.apiPostList()
//          self.viewModel.apiPostSingle(id: 1)
        let post = Post(title: "muhammad", body: "muhammad")
//        self.viewModel.apiPostCreate(post: post)
//        self.viewModel.apiPostUpdate(post: post)
        self.viewModel.apiPostDelete(post: post)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
