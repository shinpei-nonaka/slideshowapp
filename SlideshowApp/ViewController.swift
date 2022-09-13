//
//  ViewController.swift
//  SlideshowApp
//
//  Created by PC-SYSKAI556 on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var beta: UIImageView!
    let imageName = ["petfish_pefaaaa2015", "photo020_b" ,"c18c85_10a2f59c275c425c866c2a082823c05b_mv2"]
    var changeImage = 0
    
    
    @IBAction func next(_ sender: Any) {
    if changeImage == 0 {
            changeImage = 1
        }else if changeImage == 1 {
            changeImage = 2
        }else if changeImage == 2 {
            changeImage = 0
        }
        let name = imageName[changeImage]
        beta.image = UIImage(named: name)
    }
        
    @IBAction func back(_ sender: Any) {
        if changeImage == 0 {
                changeImage = 2
            }else if changeImage == 1 {
                changeImage = 0
            }else if changeImage == 2 {
                changeImage = 1
            }
            let name = imageName[changeImage]
            beta.image = UIImage(named: name)
    }
    
    var timer: Timer!
    
    @IBAction func slide(_ sender: Any) {
        if (timer == nil){
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideshow), userInfo: nil, repeats: true)
            startButton.setTitle("停止", for: .normal)
            nextButton.isEnabled = false
            backButton.isEnabled = false
        } else {
            timer.invalidate()
            timer = nil
            startButton.setTitle("再生", for: .normal)
            nextButton.isEnabled = true
            backButton.isEnabled = true
        }
    }
    
    @objc func slideshow(){
        changeImage += 1
        if (changeImage == imageName.count){
            changeImage = 0
        }
        let name = imageName[changeImage]
        beta.image = UIImage(named: name)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beta.image = UIImage(named: "petfish_pefaaaa2015")
        // Do any additional setup after loading the view.
        
        
        
    }

}

