//
//  ViewController.swift
//  SegmentedControllers
//
//  Created by Bruno Lopes de Mello on 15/08/18.
//  Copyright © 2018 Bruno Lopes de Mello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewContainer: UIView!
    var controllers = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        controllers.append(SimpleVC1())
        controllers.append(SimpleVC2())
        
        for v in controllers {
            viewContainer.addSubview(v.view)
        }
        
        let firstView: UIView = controllers[0].view
        firstView.frame = CGRect(x: 0.0, y: 0.0, width: self.viewContainer.frame.width, height: self.viewContainer.frame.height)
        viewContainer.bringSubviewToFront(firstView)
    }

    
    @IBAction func changeController(_ sender: UISegmentedControl) {
        let controllerView: UIView = controllers[sender.selectedSegmentIndex].view
        controllerView.frame = CGRect(x: 0.0, y: 0.0, width: self.viewContainer.frame.width, height: self.viewContainer.frame.height)
        self.viewContainer.bringSubviewToFront(controllerView)
    }
}

