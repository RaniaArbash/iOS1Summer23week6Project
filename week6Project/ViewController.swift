//
//  ViewController.swift
//  week6Project
//
//  Created by Rania Arbash on 2023-06-12.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table2: UITableView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mytable: UITableView!
    
    var lettersArray = (UIApplication.shared.delegate as! AppDelegate).letters
    var names = ["John", "Mary","Lee", "Smith"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        lettersArray = (UIApplication.shared.delegate as! AppDelegate).letters
        table2.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      var count = 0
        if tableView.tag == 1{
            count = names.count
        }else if tableView.tag == 2 {
            count = lettersArray.count
        }
        return count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // var cell = UITableViewCell()
    
        if tableView.tag == 1 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            cell?.textLabel?.text = names[indexPath.row]
            return cell!
        }else if tableView.tag == 2 {
            var cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2")
            cell2?.textLabel?.text = lettersArray[indexPath.row]
            cell2?.imageView?.image = UIImage(named: "img")
            return cell2!
        }
       return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if tableView.tag == 1{
            myLabel.text = names[indexPath.row]
        }else {
            myLabel.text = lettersArray[indexPath.row]
        }
    }
    

}

