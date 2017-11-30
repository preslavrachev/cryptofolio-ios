//
//  ViewController.swift
//  CryptoFolio
//
//  Created by Preslav Rachev on 29.10.17.
//  Copyright © 2017 Preslav Rachev. All rights reserved.
//

import UIKit

class BalanceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = Bundle.main.url(forResource: "Poloniex", withExtension: "json")
        
        print(p)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

