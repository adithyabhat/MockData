//
//  ViewController.swift
//  MockData
//
//  Created by Adithya hayagreeva on 5/1/20.
//  Copyright © 2020 Emirates NBD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if DEBUG
            if let mockJsonData = MockDataManager.shared.json(forEndPoint: .getUser) as? [String: Any] {
                let user = User(JSON: mockJsonData)
                print(user)
            }
        #endif
    }


}

