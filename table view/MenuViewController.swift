//
//  ViewController.swift
//  table view
//
//  Created by macos on 2019-03-18.
//  Copyright © 2019 macos. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {

    @IBOutlet var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0
        {
            switch indexPath.row{
                
            case 0:
                print("Go to home")
                
                let sb = UIStoryboard(name:"Main",bundle: nil)
            let studentDetailVC = sb.instantiateViewController(withIdentifier: "homepage") as! HomeViewController
                self.navigationController?.pushViewController(studentDetailVC, animated: true)
            case 1:
                
                let sb = UIStoryboard(name:"Main",bundle: nil)
                let studentDetailVC = sb.instantiateViewController(withIdentifier: "product") as! ProductTableViewController
                self.navigationController?.pushViewController(studentDetailVC, animated: true)
                
                
            
            default:
                print("invalid option")
                
            }
        }
        
        
        
        
    }
}

