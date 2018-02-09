//
//  Endpoint.swift
//  Networking Layer Example
//
//  Created by David on 04/02/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

protocol Endpoint {
    
    var base: String { get }
    var path: String { get }
    
}

extension Endpoint {
    
    var apiKey: String {
        return "api_key=4b76ea539cbf188fa4fbac065552c251"
    }
    
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.query = apiKey
        return components
    }
    
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}
