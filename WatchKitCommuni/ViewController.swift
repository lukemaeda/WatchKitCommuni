//
//  ViewController.swift
//  WatchKitCommuni
//
//  Created by MAEDAHAJIME on 2015/04/17.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

import UIKit

// クラスをPersonViewController
class PersonViewController: UIViewController {

    // personNameラベル
    @IBOutlet private weak var personName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 相撲番付け表示（人）
    func showPerson(name: String) {
        personName.text = name
    }

}

