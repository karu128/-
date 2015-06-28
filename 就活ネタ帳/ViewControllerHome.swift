//
//  ViewController.swift
//  就活ネタ帳
//
//  Created by 畠山　ひかる on 2015/06/26.
//  Copyright (c) 2015年 Hikaru Hatakeyama. All rights reserved.
//



import UIKit

class ViewControllerHome: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var tableView : UITableView!
    
    let imgArray: NSMutableArray = ["1.png","2.png","3.png","4.png","5.png","6.png","7.png","8.png","9.png","10.png","11.png","12.png","13.png","14.png","15.png","16.png","17.png","18.png","19.png","20.png","21.png","22.png","23.png","24.png","25.png","26.png","27.png","28.png","29.png","30.png","31.png"]
    
    //    var imgArray: NSMutableArray = []
    //
    //    for(var i = 0, n = 31, i < n, i++){
    //    imgArray.apprand =
    //
    //    }
    var selectedImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Addボタンの生成
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    
    
    //Table Viewのセルの数を指定
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    //各セルの要素を設定する!
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成 cell deque
        var cell = tableView.dequeueReusableCellWithIdentifier("TableCell", forIndexPath: indexPath) as? UITableViewCell
        
        var img = UIImage(named:"\(imgArray[indexPath.row])")
        // Tag番号 1 で UIImageView インスタンスの生成
        var imageView = tableView.viewWithTag(1) as! UIImageView
        imageView.image = img
        
        return cell!
    }
    // Cell が選択された場合
    //    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
    //        // [indexPath.row] から画像名を探し、UImage を設定
    //        selectedImage = UIImage(named:"\(imgArray[indexPath.row])")
    //
    //        // DetailViewController へ遷移するために Segue を呼び出す
    //        performSegueWithIdentifier("ToDetailViewController",sender: nil)
    //    }
    //
    //
    //    // Add が選択された場合
    //    func insertNewObject(sender: AnyObject) {
    //
    //        let now = NSDate() //現在時刻を取得して文字列に変換
    //        let formatter = NSDateFormatter()
    //        formatter.dateFormat = "yyyy/MM/dd HH:mm" //"yyyy/MM/dd HH:mm:ss"
    //        let nowString = formatter.stringFromDate(now)
    //
    //        label2Array.insert(nowString, atIndex: 0)
    //        selectedImage = nil
    //        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
    //        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    //
    //    }
    // DetailViewController に遷移
    
//    // Segue 準備
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//        if (segue.identifier == "ToDetailViewController") {
//            if selectedImage != nil{
//                let DetailVC: DetailViewController = segue.destinationViewController as! DetailViewController
//                // DetailViewController のselectedImgに選択された画像を設定する
//                DetailVC.selectedImg = selectedImage
//            }
//        }
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


//import UIKit
//
//class ViewControllerHome: UIViewController, UITableViewController, UITableViewDataSource, UITableViewDelegate {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 31
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell = UITableViewCell(style:  .Default, reuseIdentifier: "myCell")
//        if let ip = indexPath {
//            var dateimage: UIImage = UIImage(named: "\(ip.row + 1).png")!
//            
//            
//        
//        cell.imageView?.transform = CGAffineTransformMakeRotation(-3.141592 / 2)
//        
//        return cell
//    }
//        
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell = UITableViewCell(style:  .Default, reuseIdentifier: "myCell")
//        cell.imageView?.image = UIImage(named: "1.png")
//        cell.imageView?.image = UIImage(named: "2.png")
//        cell.imageView?.image = UIImage(named: "3.png")
//        cell.imageView?.image = UIImage(named: "4.png")
//        cell.imageView?.image = UIImage(named: "5.png")
//        cell.imageView?.image = UIImage(named: "6.png")
//        cell.imageView?.image = UIImage(named: "7.png")
//        cell.imageView?.image = UIImage(named: "8.png")
//        cell.imageView?.image = UIImage(named: "9.png")
//        cell.imageView?.image = UIImage(named: "10.png")
//        cell.imageView?.image = UIImage(named: "11.png")
//        cell.imageView?.image = UIImage(named: "12.png")
//        cell.imageView?.image = UIImage(named: "13.png")
//        cell.imageView?.image = UIImage(named: "14.png")
//        cell.imageView?.image = UIImage(named: "15.png")
//        cell.imageView?.image = UIImage(named: "16.png")
//        cell.imageView?.image = UIImage(named: "17.png")
//        cell.imageView?.image = UIImage(named: "18.png")
//        cell.imageView?.image = UIImage(named: "19.png")
//        cell.imageView?.image = UIImage(named: "20.png")
//        cell.imageView?.image = UIImage(named: "21.png")
//        cell.imageView?.image = UIImage(named: "22.png")
//        cell.imageView?.image = UIImage(named: "23.png")
//        cell.imageView?.image = UIImage(named: "24.png")
//        cell.imageView?.image = UIImage(named: "25.png")
//        cell.imageView?.image = UIImage(named: "26.png")
//        cell.imageView?.image = UIImage(named: "27.png")
//        cell.imageView?.image = UIImage(named: "28.png")
//        cell.imageView?.image = UIImage(named: "29.png")
//        cell.imageView?.image = UIImage(named: "30.png")
//        cell.imageView?.image = UIImage(named: "31.png")
//        
//        cell.imageView?.transform = CGAffineTransformMakeRotation(-3.141592 / 2)
//
//        return cell
//    }
//}

