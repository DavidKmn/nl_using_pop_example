//
//  MovieClient.swift
//  Networking Layer Example
//
//  Created by David on 05/02/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

class MoviewClient: APIClient {
    
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    
    func getFeed(from movieFeedType: MovieFeed, completion: @escaping (Result<MovieFeedResult?, APIError>) -> Void) {
        
        fetch(with: movieFeedType.request, decode: { (json) -> MovieFeedResult? in
            
            guard let movieFeedResult = json as? MovieFeedResult else { return nil }
            return movieFeedResult
            
        }, completion: completion)
        
        
    }
    
}
