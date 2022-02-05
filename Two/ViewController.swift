//
//  ViewController.swift
//  Two
//
//  Created by Leann Abellanosa on 2/4/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet var appView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        textView.textColor = UIColor.random()
    }
    
    @IBAction func enterClicked(_ sender: UIButton) {
        textView.textAlignment = .center
        textView.text = textField.text!
    }
    
    @IBAction func backgroundButton(_ sender: UIButton) {
        appView.backgroundColor = UIColor.random()
    }
    
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    }
}
