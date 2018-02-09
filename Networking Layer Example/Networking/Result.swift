//
//  Result.swift
//  Networking Layer Example
//
//  Created by David on 04/02/2018.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation

enum Result<T, U> where U: Error {
    case Success(T)
    case Failure(U)
}
