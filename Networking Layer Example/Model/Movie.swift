//
//  Movie.swift
//  Networking Layer Example
//
//  Created by David on 04/02/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

///Movie conforms to Decodable
///All properties are optionals to avoid crashes if there is no key in the JSON file matching them.

struct Movie: Decodable {
    
    let title: String?
    let poster_path: String?
    let overview: String?
    let releaseDate: String?
    let backdrop_path: String?
    let release_date: String?
}
