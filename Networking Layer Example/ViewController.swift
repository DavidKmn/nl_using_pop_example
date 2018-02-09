//
//  ViewController.swift
//  Networking Layer Example
//
//  Created by David on 04/02/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let client = MoviewClient()

    override func viewDidLoad() {
        super.viewDidLoad()

    
        view.backgroundColor = .white
    
        client.getFeed(from: .topRated) { (result: Result) in
            switch result {
            case .Success(let movieFeedResult):
                guard let movieResult = movieFeedResult?.results else { return }
                movieResult.forEach { print($0) }
            case .Failure(let error):
                print("The Error: \(error.localizedDescription)")
            }
        }
    
    }
}

