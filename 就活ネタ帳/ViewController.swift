//
//  ViewController.swift
//  就活ネタ帳
//
//  Created by 畠山　ひかる on 2015/06/18.
//  Copyright (c) 2015年 Hikaru Hatakeyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var box=0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBtn1(sender: AnyObject) {
    let image = UIImage(named: "job101.png") as UIImage!
    sender.setImage(image, forState: .Normal)
    box = sender.tag
        println(String(box))
    }
    
}


