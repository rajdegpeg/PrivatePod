//
//  ViewController.swift
//  PrivatePod
//
//  Created by rajdegpeg on 06/13/2022.
//  Copyright (c) 2022 rajdegpeg. All rights reserved.
//

import UIKit
import PrivatePod
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton.init(frame: CGRect.init(x: 40, y: 200, width: 200, height: 50))
        button.setTitle("Access POD", for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.textColor = .red
        button.addTarget(self, action: #selector(accessPod), for: .touchUpInside)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func accessPod() {
        let manager = DegpegManager.init(key: "1234", userId: "", userName: "", influencerID: "")
       print("Is Pod Authorized", manager.isPodAuthorized())
        
       let vc = manager.temp()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}

