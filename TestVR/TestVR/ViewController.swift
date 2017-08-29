//
//  ViewController.swift
//  TestVR
//
//  Created by Ihor Rapalyuk on 8/25/17.
//  Copyright © 2017 Ihor Rapalyuk. All rights reserved.
//

import UIKit
import VRKit

class ViewController: UIViewController {

    @IBAction func startVRButtonPressed(_ sender: UIButton) {
        
        self.renderViews()
        
        VR.start()
    }
    
    @IBAction func stopVRButtonPressed(_ sender: UIButton) {
        
        VR.stop()
    }

    func renderViews() {
        let testView = UIView(frame: CGRect(x: self.view.frame.size.width / 2 - 20, y: self.view.frame.size.height / 2 - 20, width: 20, height: 20))
        testView.transform = CGAffineTransform.identity
        UIView.animate(withDuration: 0.5) {
            testView.transform = CGAffineTransform(translationX: CGFloat(arc4random_uniform(400)) - 200, y: CGFloat(arc4random_uniform(400)) - 200)
        }
        testView.backgroundColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
        self.view.addSubview(testView)
    }
}

