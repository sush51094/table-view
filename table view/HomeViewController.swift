//
//  HomeViewController.swift
//  table view
//
//  Created by macos on 2019-03-18.
//  Copyright © 2019 macos. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var studentArray : [Student]!
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        self.table.delegate = self
        self.table.dataSource = self
        loadstudentData()
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func loadstudentData()
    {
        studentArray = []
        studentArray.append(Student(fname:"sushmitha",lname:"varma",gender:"female",result:"pass"))
        studentArray.append(Student(fname:"sushmitha1",lname:"varma1",gender:"female",result:"pass"))
        studentArray.append(Student(fname:"sushmitha2",lname:"varma2",gender:"female",result:"pass"))

        
    }
    
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.studentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let studentCell = tableView.dequeueReusableCell(withIdentifier: "studentcell") as! StudentDetailsTableViewCell
        
        let student = self.studentArray[indexPath.row]
        
        studentCell.lbl1.text = student.fname
         studentCell.lbl2.text = student.lname
         studentCell.lbl3.text = student.gender
         studentCell.lbl4.text = student.result
        
        return studentCell
        
        
        
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
