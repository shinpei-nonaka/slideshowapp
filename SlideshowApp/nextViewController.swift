//
//  NextViewController.swift
//  SlideshowApp
//
//  Created by PC-SYSKAI556 on 2022/09/06.
//

import UIKit

class NextViewController: UIViewController {

    var aaa: String!
    

    @IBOutlet weak var jkbk: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jkbk.image = UIImage(named: aaa)

    }
    

    

    @IBAction func ccc(_ sender: Any) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
