//
//  ViewController.swift
//  PasswordHacker
//
//  Created by Motonari Sakuma on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    //秘密のパスワード（今回のは仮設定）
    var password:Int = 3497
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start(){
        for i in 0...9999 {//ループを続ける条件
            
            countLabel.text = String(i) //解析中の数字を表示する
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005)) //処理を0.0005秒、待機する。
            
            if i == password {
                var digits = [Int]()
                for _ in 0...3{
                    digits.append(password % 10)
                    password = password / 10
                }
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
            }
        }
    }
    @IBAction func reset(){
        password = 3497
        
        countLabel.text = "「start」ボタンを押して解析開始"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }

}

