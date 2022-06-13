//
//  Manager.swift
//  PrivatePod
//
//  Created by Raj Kadam on 13/06/22.
//

import Foundation
import UIKit
public class DegpegManager {
    
    private var authKey: String
    private var authorized: Bool
    
    public init(key: String, userId: String, userName: String, influencerID: String) {
        authKey = key
        authorized = Approved.keys.contains(key) ? true : false
        
    }
 
   public func isPodAuthorized() -> Bool {
        return authorized
    }
    
}

private struct Approved {
    static let keys = ["1234", "abcd"]
}
