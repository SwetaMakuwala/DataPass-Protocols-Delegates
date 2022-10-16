//
//  SecondViewController.swift
//  protocol&Delegate
//
//  Created by sweta makuwala on 26/01/22.
//

import UIKit
protocol SecondVCdelegate {
    func passInfo(text: String)
}

class SecondViewController: UIViewController {
    var delegate : SecondVCdelegate!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        if let data = textField.text {
            delegate.passInfo(text:data )
        }
        dismiss(animated: true, completion: nil)
        
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
