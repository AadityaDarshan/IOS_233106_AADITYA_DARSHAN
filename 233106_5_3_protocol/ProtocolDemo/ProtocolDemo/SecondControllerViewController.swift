//
//  SecondControllerViewController.swift
//  ProtocolDemo
//
//  Created by STUDENT on 4/26/24.
//

import UIKit

protocol SecondControllerViewControllerDelegate{
    func popValue(value:String)
}

class SecondControllerViewController: UIViewController {

    var delegate:SecondControllerViewControllerDelegate?
    var firstFieldString:String = ""
    
    @IBOutlet weak var firstField: UITextField!
    
    @IBOutlet weak var secondField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstField.text = firstFieldString
        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondButtonPressed(_ sender: Any) {
        self.delegate?.popValue(value: secondField.text!)
        self.navigationController?.popViewController(animated: true)
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
