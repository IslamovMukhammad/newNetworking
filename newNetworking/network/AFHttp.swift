
import Foundation
import Alamofire

private let IS_TESTER = true
private let DEP_SER = "https://jsonplaceholder.typicode.com/"
private let DEV_SER = "https://jsonplaceholder.typicode.com/"

let headers: HTTPHeaders = [
    "Accept": "application/json",
]

class AFHttp {

    // MARK : - AFHttp Requests

    class func get(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .get, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }

    class func post(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .post, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }

    class func put(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .put, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }

    class func del(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .delete, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }

    // MARK : - AFHttp Methods
    class func server(url: String) -> URL{
        if(IS_TESTER){
            return URL(string: DEV_SER + url)!
        }
        return URL(string: DEP_SER + url)!
    }

    // MARK : - AFHttp Apis
    static let API_POST_LIST = "posts"
    static let API_POST_SINGLE = "posts/" //id
    static let API_POST_CREATE = "posts"
    static let API_POST_UPDATE = "posts/" //id
    static let API_POST_DELETE = "posts/" //id


    // MARK : - AFHttp Params
    class func paramsEmpty() -> Parameters {
        let parameters: Parameters = [
            :]
        return parameters
    }

    class func paramsPostCreate(post: Post) -> Parameters {
        let parameters: Parameters = [
          "title": post.title!,
          "body": post.body!,
          "useID": post.userId!
        ]
        return parameters
    }

    class func paramsPostUpdate(post: Post) -> Parameters {
        let parameters: Parameters = [
          "id": post.id!,
          "title": post.title!,
          "body": post.body!,
          "useID": post.userId!
        ]
        return parameters
    }

}
