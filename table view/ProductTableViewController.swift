//
//  ProductTableViewController.swift
//  table view
//
//  Created by macos on 2019-03-18.
//  Copyright © 2019 macos. All rights reserved.
//

import UIKit

class ProductTableViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func `switch`(_ sender: UISwitch) {
        
        if sender.isOn
        {
            label.text = "the switch is on"
            image.image = UIImage(named: "aboutus.png")
        }
        
        else
        {
            label.text = " the switch is off"
            
            image.image = UIImage(named: "help.png")
        }
        
        
        
    }
    
     @IBAction func slider(_ sender: UISlider) {
        
        
        label.text = String(Int(sender.value))
        
        
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
