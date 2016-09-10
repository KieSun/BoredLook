//
//  NetWorking.swift
//  BoredLook
//
//  Created by yck on 2016/9/10.
//  Copyright © 2016年 yck. All rights reserved.
//

import Foundation
import Moya
import SwiftyJSON

let BoredLookProvider = MoyaProvider<RequestApi>()

typealias SuccessClosure = (result: JSON) -> Void
typealias FailClosure = (errorMsg: String?) -> Void
typealias CatchClosure = () -> Void

enum RequestCode: String {
    case failError = "0"
    case success = "1"
}

class NetWorking {
    
    static func requestDataWithTarget(target: RequestApi,successClosure: SuccessClosure, failClosure: FailClosure, catchClosure: CatchClosure) {
        
        BoredLookProvider.request(target) { (result) in
            switch result {
            case let .Success(response):
                
                do {
                    let json: Dictionary? = try response.mapJSON() as? Dictionary<String, AnyObject>
                    
                    if let json = json {
                        let json = JSON(json)
                        successClosure(result: json)
                    }
                    
                } catch {
                    catchClosure()
                }
                
            case let .Failure(error):
                failClosure(errorMsg: error.toString)
                break
            }
        }
    }
}

public enum RequestApi {
    
}

extension RequestApi: TargetType {
    public var baseURL: NSURL {
        return NSURL(string: "")!
        
    }
    
    public var path: String {
        switch self {
            
        default:
            return ""
        }
    }
    
    public var method: Moya.Method {
        switch self {
            
        default:
            return .GET
        }
    }
    
    public var parameters: [String: AnyObject]? {
        switch self {
        
        default:
            return nil
        }
    }
    
    //  单元测试用
    public var sampleData: NSData {
        return "{}".dataUsingEncoding(NSUTF8StringEncoding)!
    }
    
}