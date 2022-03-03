//
//  ContentView.swift
//  newNetworking
//
//  Created by Muhammad Islamov on 03/03/22.
//

import SwiftUI
import Alamofire

struct ContentView: View {

  func apiPostList(){
    AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty(), handler: { response in
      switch response.result {
      case .success:
        print(response.result)
      case let .failure(error):
        print(error)
      }
    })
  }

  func apiPostSingle(id: Int){
    AFHttp.get(url: AFHttp.API_POST_SINGLE + String(id), params: AFHttp.paramsEmpty(), handler: { response in
      switch response.result {
      case .success:
        print(response.result)
      case let .failure(error):
        print(error)
      }
    })
  }

  func apiPostCreate(post: Post){
    AFHttp.post(url: AFHttp.API_POST_CREATE, params: AFHttp.paramsPostCreate(post: post), handler: { response in
      switch response.result {
      case .success:
        print(response.result)
      case let .failure(error):
        print(error)
      }
    })
  }
  func apiPostUpdate(post:Post){
    AFHttp.put(url: AFHttp.API_POST_UPDATE + String(post.id!), params: AFHttp.paramsPostUpdate(post: post), handler: { response in
      switch response.result {
      case .success:
        print(response.result)
      case let .failure(error):
        print(error)
      }
    })
  }

  func apiPostDelete(post: Post){
    AFHttp.del(url: AFHttp.API_POST_DELETE + String(post.id!), params: AFHttp.paramsEmpty(), handler: { response in
      switch response.result {
      case .success:
        print(response.result)
      case let .failure(error):
        print(error)
      }
    })
  }

    var body: some View {
      NavigationView{
        Text("Hello, world!")
            .padding()
      }.onAppear{
//        apiPostList()
//          apiPostSingle(id: 1)
        let post = Post(title: "muhammad", body: "muhammad")
//        apiPostCreate(post: post)
//        apiPostUpdate(post: post)
          apiPostDelete(post: post)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
