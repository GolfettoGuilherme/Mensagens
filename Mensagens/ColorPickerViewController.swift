//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Guilherme Golfetto on 24/09/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var slBlue: UISlider!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    
    //para não ter reference count
    weak var delegate: ColorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: UISlider) {

        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
    @IBAction func chooseColor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.applyColor(color: viColor.backgroundColor!)
    }
    

}
