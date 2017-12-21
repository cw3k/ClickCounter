//
//  ViewController.swift
//  ClickCounter
//
//  Created by codingAccount on 12/21/17.
//  Copyright © 2017 codingAccount. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        // Label
        let label2 = UILabel()
        label2.frame = CGRect.init(x: 75, y: 150, width: 60, height: 60)
        label2.text = "0"
        self.view.addSubview(label2)
        self.label2 = label2
        
        // Button
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        // Button2
        let buttonDecrement = UIButton()
        buttonDecrement.frame = CGRect.init(x: 75, y: 250, width: 60, height: 60)
        buttonDecrement.setTitle("ClickD", for: .normal)
        buttonDecrement.setTitleColor(UIColor.darkGray, for: .normal)
        self.view.addSubview(buttonDecrement)
        
        buttonDecrement.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction func toggleColor() {
        if(count%2 == 0) {
            self.view.backgroundColor = UIColor.green
        } else {
            self.view.backgroundColor = UIColor.white
        }
    }
    
    @objc func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        toggleColor()
    }
    
    @objc func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        toggleColor()
    }
}

