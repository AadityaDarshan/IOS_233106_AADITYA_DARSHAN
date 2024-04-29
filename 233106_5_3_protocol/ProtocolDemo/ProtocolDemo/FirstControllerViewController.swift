//
//  FirstControllerViewController.swift
//  ProtocolDemo
//
//  Created by STUDENT on 4/26/24.
//

import UIKit


class FirstControllerViewController: UIViewController, SecondControllerViewControllerDelegate {
    func popValue(value:String){
        secondField.text = value
    }

   
    @IBOutlet weak var firstField: UITextField!
    
    @IBOutlet weak var secondField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func firstButtonPressed(_ sender: Any) {
        let controller  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondControllerViewController") as! SecondControllerViewController
        controller.firstFieldString = self.firstField.text!
        controller.delegate = self
        self.navigationController?.pushViewController(controller, animated: true)
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
