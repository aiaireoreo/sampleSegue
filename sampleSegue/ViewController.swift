//
//  ViewController.swift
//  sampleSegue
//
//  Created by AI Matsubara on 2016/05/04.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //カウント用の変数
    var myCount = 0
    //クラスの中に書く変数のことをメンバ変数とゆう
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //もしもセグエの名前がmysegueだったら
        if (segue.identifier == "mySegue") {
            
            //カウントアップして
            myCount++
            
            //次の画面のtmpCountに、muCountの値を受け渡す
            var newVC = segue.destinationViewController as! secondViewController
            
            newVC.tmpCount = myCount
        }
    }

    //戻るセグエをつけるための用意
    @IBAction func returnMenu(segue: UIStoryboardSegue) {
        
        //mycount変数に前の画面のtmpCountの値を受け取って
        let newVC = segue.sourceViewController as! secondViewController
        //大事なポイント
        //セグエをつけて戻ってはきてるが、セグエの力を使って戻ってきている状態
        //矢印の方向が変わるイメージ？
        
        
        myCount = newVC.tmpCount
        
        //カウントアップ
        myCount++
        
        //値を出力する
        print("前の画面から戻ってきた時<\(myCount)>")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

