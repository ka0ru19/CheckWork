//
//  NextViewController.swift
//  cw
//
//  Created by Wataru Inoue on 2017/07/07.
//  Copyright © 2017年 Wataru Inoue. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var randomLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func next() {
        
    }
    
    @IBAction func random() {
    }
    
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
}
