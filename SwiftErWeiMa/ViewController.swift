//
//  ViewController.swift
//  SwiftErWeiMa
//
//  Created by bsmac1 on 16/1/13.
//  Copyright © 2016年 bsmac1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var showImageView:UIImageView!
    var textField:UITextField!
    var beginShowErWeiMaBtn:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置imageview
        self.setShowImageView()
        //设置textfield和button
        self.setTextFieldAndBtn()
    }
    func setShowImageView(){
        showImageView = UIImageView(frame: CGRectMake(0, 0, 200, 200))
        showImageView.center = view.center
        view.addSubview(showImageView)
    }
    func setTextFieldAndBtn(){
        textField = UITextField(frame: CGRectMake(0, 0, 300, 30))
        textField.backgroundColor = UIColor.grayColor()
        textField.center = CGPointMake(view.center.x, view.center.y + 150)
        view.addSubview(textField)
        
        beginShowErWeiMaBtn = UIButton(frame: CGRectMake(0, 0, 100, 30))
        beginShowErWeiMaBtn.center = CGPointMake(view.center.x, view.center.y + 190)
        beginShowErWeiMaBtn.setTitle("生成二维码", forState: UIControlState.Normal)
        beginShowErWeiMaBtn.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        beginShowErWeiMaBtn.addTarget(self, action: "beginShow", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(beginShowErWeiMaBtn)
    }
    func beginShow(){
        showImageView.image = JXErWeiMaImage.generateQRCode(textField.text, width: 200, height: 200)
    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

