//
//  NextViewController.swift
//  cw
//
//  Created by Wataru Inoue on 2017/07/02.
//  Copyright © 2017年 Wataru Inoue. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var randLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageArray: [UIImage] = []
    var nowIndex = 0
    
    var timerCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageArray.append((UIImage(named: "c01.png"))!)
        imageArray.append((UIImage(named: "c02.png"))!)
        imageArray.append((UIImage(named: "c03.png"))!)
        imageArray.append((UIImage(named: "c04.png"))!)
        imageArray.append((UIImage(named: "c05.png"))!)
        
        imageView.image = imageArray[nowIndex]
        
        timerLabel.text = String(timerCount)
        _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.up), userInfo: nil, repeats: true)
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

    @IBAction func nextImage() {
        nowIndex += 1
        if nowIndex > 4 {
            nowIndex = 0
        }
        imageView.image = imageArray[nowIndex]
    }
    
    func up() {
        timerCount += 1
        timerLabel.text = String(timerCount)
    }
    
    @IBAction func randBtn() {
        let rand = Int(arc4random_uniform(UInt32(5))) // 0~4
        randLabel.text = String(rand)
        nowIndex = rand
        imageView.image = imageArray[nowIndex]
        
    }
    
}
