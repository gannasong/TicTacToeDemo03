//
//  ViewController.swift
//  TicTacToeDemo03
//
//  Created by SUNG HAO LIN on 2017/2/28.
//  Copyright © 2017年 GanNaSong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var playerTurn = 1//玩家1是X
    var gameState = [0,0,0,0,0,0,0,0,0]//代表九個位置
    @IBAction func actionButton(_ sender: UIButton) {
        //sender.tag - 1 是代表位置,然後玩家數字取代位置,變無法重複下跟位置下完就無法再點
        if isOver == false {
            if gameState[sender.tag - 1] == 0 {
                gameState[sender.tag - 1] = playerTurn
                if playerTurn == 1 {
                    sender.setImage(UIImage(named:"xx.png"), for: UIControlState())
                    playerTurn = 2
                    xxArray.append(sender.tag)
                    checkvactor()
                } else {
                    sender.setImage(UIImage(named:"oo.png"), for: UIControlState())
                    playerTurn = 1
                    ooArray.append(sender.tag)
                    checkvactor()
                }
            }
        }

        }
        
    
    
    var win = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    var xxArray:[Int] = []
    var ooArray:[Int] = []
    var isOver = false
    
    func checkvactor() {
        for wincheck in 0..<win.count {
            if Set(win[wincheck]).isSubset(of: xxArray) {
               //stautsLabel.isHidden = false //䅰藏字
                stautsLabel.text = "玩家Ｘ獲勝！！"
                isOver = true
            } else {
        for wincheck in 0..<win.count {
            if Set(win[wincheck]).isSubset(of:ooArray){
                //stautsLabel.isHidden = false
                stautsLabel.text = "玩家O獲勝！！"
                isOver = true
            }
                }
            }
        }
        if Set(gameState).contains(0) != true { //contains是有沒有包含的意思,如果集合裡面沒有包含0不等於真
            stautsLabel.text = "平手再來一場！！"
            isOver = true
        }
    }
    
    
    
    //resetbutton
    @IBAction func reSetAction(_ sender: UIButton) {
        isOver = false
        xxArray = []
        ooArray = []
        playerTurn = 1
        gameState = [0,0,0,0,0,0,0,0,0,]
        stautsLabel.text = ""
        for i in 1...9 {
            let button = view.viewWithTag(i) as! UIButton//指定按鈕傳入
            button.setImage(nil, for: UIControlState())
            
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var stautsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

