//
//  PizaResultController.swift
//  PizaTestApp
//
//  Created by 佐々木洸亮 on 2019/01/06.
//  Copyright © 2019年 sasaki. All rights reserved.
//

import UIKit

class PizaResultController: UIViewController {

    @IBOutlet weak var pizaNumText: UILabel!
    @IBOutlet weak var resultText: UILabel!
    
    @IBAction func finishButton() {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }

    var pizaNumResult: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pizaNumText.text = "\(pizaNumResult)枚"
        
        if (pizaNumResult >= 4) {
            resultText.text = "ピザ食べていいよ。"
        } else {
            resultText.text = "ピザは食べれません。"
        }
    }
}
