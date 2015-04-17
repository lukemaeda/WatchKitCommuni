//
//  InterfaceController.swift
//  WatchKitCommuni WatchKit Extension
//
//  Created by MAEDAHAJIME on 2015/04/17.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    // 最初に呼び出されるメソッド
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    // ユーザーにUIが表示されたタイミングで呼び出されるメソッド
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    // UIが非表示になったタイミングで呼び出されるメソッド
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    @IBAction func showYoko() {
        openParent("横綱")
    }
    
    @IBAction func showOuze() {
        openParent("大関")
    }
    
    @IBAction func showSeki() {
        openParent("関脇")
    }
    
    // カウントラベル
    func openParent(person: String) {
        var userInfo = ["personName" : person]
        // openParentApplication:reply:メソッド iPhone側の親アプリを起動
        // 通知先にデータを渡す場合はuserInfoにデータを指定
        WKInterfaceController.openParentApplication(userInfo, reply: { (data, error) in
            if let error = error {
                
                // 応答 失敗 ["response" : "fail"]
                println(error)
            }
            if let data = data {
                
                // 応答 成功 [response: success]
                println(data)
            }
        })
    }
}
