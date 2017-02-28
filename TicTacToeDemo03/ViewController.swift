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
        if gameState[sender.tag - 1] == 0 {
            gameState[sender.tag - 1] = playerTurn
            if playerTurn == 1 {
                sender.setImage(UIImage(named:"xx.png"), for: UIControlState())
                playerTurn = 2
            } else {
                sender.setImage(UIImage(named:"oo.png"), for: UIControlState())
                playerTurn = 1
            }

        }
           }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

