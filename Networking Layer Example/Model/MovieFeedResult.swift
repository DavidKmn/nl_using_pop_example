//
//  MovieFeedResult.swift
//  Networking Layer Example
//
//  Created by David on 04/02/2018.
//  Copyright © 2018 David. All rights reserved.
//
import Foundation

///the JSON has a key called results and its an array of movies.

struct MovieFeedResult: Decodable {
    let results: [Movie]?
}
