//
//  ViewController.swift
//  cw
//
//  Created by Wataru Inoue on 2017/07/02.
//  Copyright © 2017年 Wataru Inoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var n = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func plus() {
        n += 1
        label.text = String(n)
    }
    
    @IBAction func clear() {
        n = 0
        label.text = String(n)
    }
}

