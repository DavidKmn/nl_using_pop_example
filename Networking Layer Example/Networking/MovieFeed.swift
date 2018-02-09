//
//  MovieFeed.swift
//  Networking Layer Example
//
//  Created by David on 04/02/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

enum MovieFeed {
    case nowPlaying, topRated
}

extension MovieFeed: Endpoint {
    
    var base: String {
        return "https://api.themoviedb.org"
    }
    
    var path: String {
        switch self {
        case .nowPlaying:
            return "/3/movie/now_playing"
        case .topRated:
            return "/3/movie/top_rated"
        }
    }
    
}
