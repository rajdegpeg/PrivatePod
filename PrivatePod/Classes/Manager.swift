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
       print("t")
        return authorized
    }
    
    public func temp() -> UIViewController{
        let bundle = Bundle(for: type(of: self))
        let b = Bundle.init(for: DegpegManager.self)
        let path = b.path(forResource: "PrivatePod", ofType: "bundle")
        let r_bundle = Bundle(url: URL.init(fileURLWithPath: path!))
        
        let storyboard = UIStoryboard.init(name: "Storyboard", bundle: r_bundle)
        if #available(iOS 13.0, *) {
            let nav = storyboard.instantiateViewController(identifier: "FirstVC") as! FirstVC
            return nav
        } else {
            // Fallback on earlier versions
            let nav = storyboard.instantiateViewController(withIdentifier: "FirstVC") as! FirstVC
            
            return nav
        }
    }
    
}

private struct Approved {
    static let keys = ["1234", "abcd"]
}
