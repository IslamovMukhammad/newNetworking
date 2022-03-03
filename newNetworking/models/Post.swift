

import Foundation
import Alamofire

struct Post: Decodable{

  var userId: Int?
  var id: Int?
  var title: String?
  var body: String?

    init() {

    }

  init( title: String, body: String) {
    self.userId = 1
    self.id = 1
    self.title = title
    self.body = body
    }

  init(userId: Int, id: Int, title: String, body: String){
    self.userId = userId
    self.id  = id
    self.title = title
    self.body = body
  }
}
