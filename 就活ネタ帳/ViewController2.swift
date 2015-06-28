//
//  ViewController2.swift
//  就活ネタ帳
//
//  Created by 畠山　ひかる on 2015/06/25.
//  Copyright (c) 2015年 Hikaru Hatakeyama. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var myTextView: UITextView!
    
    var 就活1Button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeDatePicker(sender: UIDatePicker) {
        let df = NSDateFormatter()
        df.dateFormat = "yyyy/MM/dd"
    }
    @IBAction func tapReturnKey(sender: UITextField) {
    }
}
