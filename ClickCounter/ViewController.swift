//
//  ViewController.swift
//  ClickCounter
//
//  Created by Michael Henry on 7/8/16.
//  Copyright © 2016 Digital Javelina, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
/* CODE TO BE USED WITHOUT STORYBOARD
         
        // label1
        let label1 = UILabel()
        label1.frame = CGRectMake(150, 150, 60, 60)
        label1.text = "0"
        self.view.addSubview(label1)
        self.label1 = label1
        
        // label2
        let label2 = UILabel()
        label2.frame = CGRectMake(150, 100, 60, 60)
        label2.text = "1"
        self.view.addSubview(label2)
        self.label2 = label2
        
        
        // addButton
        let addButton = UIButton()
        addButton.frame = CGRectMake(150, 250, 100, 60)
        addButton.setTitle("Increment", forState: .Normal)
        addButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(addButton)
        addButton.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: .TouchUpInside)
        
        // decrementButton
        let decrementButton = UIButton()
        decrementButton.frame = CGRectMake(150, 300, 100, 60)
        decrementButton.setTitle("Decrement", forState: .Normal)
        decrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: .TouchUpInside)
        
        // colorChangeButton
        let colorChangeButton = UIButton()
        colorChangeButton.frame = CGRectMake(150, 350, 100, 60)
        colorChangeButton.setTitle("Change Color", forState: .Normal)
        colorChangeButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(colorChangeButton)
        colorChangeButton.addTarget(self, action: #selector(ViewController.changeBackgroundColor), forControlEvents: .TouchUpInside)
 */
        
    }
    
    @IBAction func incrementCount() {
        self.count += 1
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count + 1)"
    }
    
    @IBAction func decrementCount() {
        self.count -= 1
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count + 1)"
    }
    
    @IBAction func changeBackgroundColor() {
        let red = CGFloat(arc4random_uniform(256)) / 256
        let green = CGFloat(arc4random_uniform(256)) / 256
        let blue = CGFloat(arc4random_uniform(256)) / 256
        let viewBackgroundColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1.0)
        self.view.backgroundColor = viewBackgroundColor
    }

}

