//
//  ViewController.swift
//  SwiftPMAPP
//
//  Created by 長島啓太朗 on 2023/08/23.
//

import UIKit
import PKHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        HUD.flash(.success,delay: 2.0)
    }

}

