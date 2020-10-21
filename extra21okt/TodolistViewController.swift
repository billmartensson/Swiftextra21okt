//
//  ViewController.swift
//  extra21okt
//
//  Created by Bill Martensson on 2020-10-21.
//

import UIKit

class TodolistViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var todotitleTextfield: UITextField!
    @IBOutlet weak var thetableview: UITableView!
    @IBOutlet weak var thebutton: UIButton!

    
    var todolist = [String]()
    
    
    
    // En kommentar
    /*
     Flera
     rader
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        
        thetableview.dataSource = self
        
        todolist.append("aaaaaa")
        todolist.append("bbbb")
        todolist.append("cccc")
        
    }
    
    @IBAction func clickbutton(_ sender: Any) {
        
        todolist.append(todotitleTextfield.text!)
        thetableview.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todolist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "todocell")
        
        cell?.textLabel?.text = todolist[indexPath.row]
        
        return cell!
    }

}

