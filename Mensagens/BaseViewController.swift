//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Guilherme Golfetto on 24/09/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        
        if let reference = self as? ColorPickerDelegate {
            
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.delegate = reference
            colorPicker.modalPresentationStyle = .overCurrentContext
            
            present(colorPicker, animated: true, completion: nil)
            
        }
        
    }

}
