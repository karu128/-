//
//  ViewController.swift
//  就活ネタ帳
//
//  Created by 畠山　ひかる on 2015/06/26.
//  Copyright (c) 2015年 Hikaru Hatakeyama. All rights reserved.
//

import UIKit

class ViewControllerHome: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 31
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style:  .Default, reuseIdentifier: "myCell")
        cell.imageView?.image = UIImage(named: "1.png")
        cell.imageView?.image = UIImage(named: "2.png")
        cell.imageView?.image = UIImage(named: "3.png")
        cell.imageView?.image = UIImage(named: "4.png")
        cell.imageView?.image = UIImage(named: "5.png")
        cell.imageView?.image = UIImage(named: "6.png")
        cell.imageView?.image = UIImage(named: "7.png")
        cell.imageView?.image = UIImage(named: "8.png")
        cell.imageView?.image = UIImage(named: "9.png")
        cell.imageView?.image = UIImage(named: "10.png")
        cell.imageView?.image = UIImage(named: "11.png")
        cell.imageView?.image = UIImage(named: "12.png")
        cell.imageView?.image = UIImage(named: "13.png")
        cell.imageView?.image = UIImage(named: "14.png")
        cell.imageView?.image = UIImage(named: "15.png")
        cell.imageView?.image = UIImage(named: "16.png")
        cell.imageView?.image = UIImage(named: "17.png")
        cell.imageView?.image = UIImage(named: "18.png")
        cell.imageView?.image = UIImage(named: "19.png")
        cell.imageView?.image = UIImage(named: "20.png")
        cell.imageView?.image = UIImage(named: "21.png")
        cell.imageView?.image = UIImage(named: "22.png")
        cell.imageView?.image = UIImage(named: "23.png")
        cell.imageView?.image = UIImage(named: "24.png")
        cell.imageView?.image = UIImage(named: "25.png")
        cell.imageView?.image = UIImage(named: "26.png")
        cell.imageView?.image = UIImage(named: "27.png")
        cell.imageView?.image = UIImage(named: "28.png")
        cell.imageView?.image = UIImage(named: "29.png")
        cell.imageView?.image = UIImage(named: "30.png")
        cell.imageView?.image = UIImage(named: "31.png")
        
        cell.imageView?.transform = CGAffineTransformMakeRotation(-3.141592 / 2)
        self.view.transform = CGAffineTransformMakeRotation(3.141592 / 2)

        return cell
    }
}

