//
//  ViewController.swift
//  就活ネタ帳
//
//  Created by 畠山　ひかる on 2015/06/18.
//  Copyright (c) 2015年 Hikaru Hatakeyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    private var myLeftButton: UIBarButtonItem!
    private var myRightButton: UIBarButtonItem!
    private var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 背景色をCyanに設定する.
        self.view.backgroundColor = UIColor.cyanColor()
        
        // NavigationControllerのタイトルを設定する.
        self.title = "My Navigation"
        
        // 左ボタンを作成する..
        myRightButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "onClickMyButton:")
        
        // tagを設定する.
        myRightButton.tag = 1
        
        // ナビゲーションバーの左に設置する.
        self.navigationItem.leftBarButtonItem = myLeftButton
        
        // ナビゲーションバーの右に設置する.
        self.navigationItem.rightBarButtonItem = myRightButton
    }
    
    /*
    ボタンイベント.
    */
    internal func onClickMyButton(sender: UIButton){
        
        switch(sender.tag){
            
            // 背景色を青色に変える.
        case 1:
            self.view.backgroundColor = UIColor.blueColor()
            
            // 背景色を赤色に変える.
        case 2:
            self.view.backgroundColor = UIColor.redColor()
            
        default:
            println("")
        }
        // DatePickerを生成する.
        let myDatePicker: UIDatePicker = UIDatePicker()
        
        // datePickerを設定（デフォルトでは位置は画面上部）する.
        myDatePicker.frame = CGRectMake(0, self.view.bounds.height/4, 0, 0)
        myDatePicker.backgroundColor = UIColor.whiteColor()
        myDatePicker.layer.cornerRadius = 4.0
        myDatePicker.layer.shadowOpacity = 0.5
        
        // 値が変わった際のイベントを登録する.
        myDatePicker.addTarget(self, action: "onDidChangeDate:", forControlEvents: .ValueChanged)
        
        // DataPickerをViewに追加する.
        self.view.addSubview(myDatePicker)
        }
    
    /*
    DatePickerが選ばれた際に呼ばれる.
    */
    internal func onDidChangeDate(sender: UIDatePicker){
        
        // フォーマットを生成.
        let myDateFormatter: NSDateFormatter = NSDateFormatter()
        myDateFormatter.dateFormat = "yyyy/MM/dd hh:mm"
        
        // 日付をフォーマットに則って取得.
        let mySelectedDate: NSString = myDateFormatter.stringFromDate(sender.date)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

