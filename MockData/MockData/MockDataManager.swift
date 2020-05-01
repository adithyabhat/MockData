//
//  MockDataManager.swift
//  MockData
//
//  Created by Adithya hayagreeva on 5/1/20.
//  Copyright © 2020 Emirates NBD. All rights reserved.
//

import Foundation

public class MockDataManager {
    
    static let shared = MockDataManager()
    
    func json(forEndPoint endPoint: EndPoint) -> Any? {
        if let path = Bundle.main.path(forResource: endPoint.jsonFileName(), ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                return jsonResult
            } catch {
                //Could not parse JSON
                return nil
            }
        }
        return nil
    }
    
}

extension EndPoint {
    
    func jsonFileName() -> String? {
        switch self {
        case .getUser: return "user"
        }
    }
    
}
