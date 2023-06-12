//
//  SecondViewController.swift
//  week6Project
//
//  Created by Rania Arbash on 2023-06-12.
//

import UIKit

class SecondViewController: UIViewController {

    
    var lettersArray = (UIApplication.shared.delegate as! AppDelegate).letters

    @IBOutlet weak var letterText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func AddNewLetter(_ sender: Any) {
        
        if  !letterText.text!.isEmpty
         {
            if let goodletter = letterText.text {
               // lettersArray.append(goodletter)
                (UIApplication.shared.delegate as! AppDelegate).letters.append(goodletter)
                dismiss(animated: true)
            }
            
        }
        
    }
        
    @IBAction func cancel(_ sender: Any) {
        
        dismiss(animated: true)
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
