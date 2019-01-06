//
//  PizaController.swift
//  PizaTestApp
//
//  Created by 佐々木洸亮 on 2019/01/05.
//  Copyright © 2019年 sasaki. All rights reserved.
//

import UIKit

enum Pngfiles: String {
    case pizaPng = "4507.png"
    case pizaCrossPng = "4507_batu.png"
}

class PizaController: UIViewController {

    @IBOutlet weak var pizaCount: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var buttonPressCount:Int = 1 {
        didSet {
            if (buttonPressCount > 8) {
                performSegue(withIdentifier: "PizaResult", sender: nil)
            }
        }
    }
    
    var pizaNum: Int = 0
    
    let pizaImage: UIImage = UIImage(named:Pngfiles.pizaPng.rawValue)!
    let pizaCrossImage: UIImage = UIImage(named:Pngfiles.pizaCrossPng.rawValue)!
    
    @IBAction func nextButtonPress() {
        
        if (buttonPressCount != 8) {
            buttonPressCount += 1
            pizaCount.text = "\(buttonPressCount)枚 / 8枚"
            
            //        if (buttonPressCount == 8)
            
            if (arc4random_uniform(10) % 2 == 0) {
                pizaNum += 1
                imageView.image = pizaImage
            } else {
                imageView.image = pizaCrossImage
            }
        } else if (buttonPressCount == 8) {
            buttonPressCount += 1
            return
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pizaCount.text = "\(buttonPressCount)枚 / 8枚"
        if (arc4random_uniform(10) % 2 == 0) {
            pizaNum += 1
            imageView.image = pizaImage
        } else {
            imageView.image = pizaCrossImage
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "PizaResult") {
            let pizaResult = segue.destination as? PizaResultController
            pizaResult?.pizaNumResult = self.pizaNum
        }
    }
}
