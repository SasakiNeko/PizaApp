//
//  ViewController.swift
//  PizaTestApp
//
//  Created by 佐々木洸亮 on 2019/01/05.
//  Copyright © 2019年 sasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func startButtonPress(sender: AnyObject) {
        performSegue(withIdentifier: "PizaSegue",sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "PizaSegue") {
            let pizaController: PizaController = (segue.destination as? PizaController)!
        }
    }
}

