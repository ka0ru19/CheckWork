//
//  ViewController.swift
//  cw
//
//  Created by Wataru Inoue on 2017/07/02.
//  Copyright © 2017年 Wataru Inoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number : Int = 0
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
    }
}
