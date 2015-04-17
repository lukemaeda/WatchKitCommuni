//
//  AppDelegate.swift
//  WatchKitCommuni
//
//  Created by MAEDAHAJIME on 2015/04/17.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // rootViewController を PersonViewController にする
    var personViewController: PersonViewController {
        return window?.rootViewController as! PersonViewController
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(application: UIApplication, handleWatchKitExtensionRequest
        userInfo: [NSObject : AnyObject]?, reply: (([NSObject : AnyObject]!) -> Void)?) {
            
            // userInfo通知のデータを確認
            if let info = userInfo as? [String: String] {
                // personViewController メソッド：showPerson <- userInfo
                personViewController.showPerson(info["personName"]!)
                // 応答 成功
                reply.map { $0(["response" : "success"]) }
            } else {
                // 応答 失敗
                reply.map { $0(["response" : "fail"]) }
            }
    }

    func applicationWillResignActive(application: UIApplication) {

    }

    func applicationDidEnterBackground(application: UIApplication) {

    }

    func applicationWillEnterForeground(application: UIApplication) {

    }

    func applicationDidBecomeActive(application: UIApplication) {

    }

    func applicationWillTerminate(application: UIApplication) {

    }

}

