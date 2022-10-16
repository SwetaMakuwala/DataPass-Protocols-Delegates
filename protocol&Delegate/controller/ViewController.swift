//
//  ViewController.swift
//  protocol&Delegate
//
//  Created by sweta makuwala on 26/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let secondVc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        secondVc.delegate = self
        present(secondVc, animated: true, completion: nil)
        
    }
    
}

extension ViewController : SecondVCdelegate{
    func passInfo(text: String) {
        label.text = text
    }
    
    
}
