//
//  ViewController.swift
//  RGB
//
//  Created by Alex Nikon on 22.01.16.
//  Copyright © 2016 Alex Nikon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var rSlider: UISlider! {
        didSet{
            rSlider.tintColor = UIColor.red
        }
    }
    
    @IBOutlet weak var gSlider: UISlider! {
        didSet{
            gSlider.tintColor = UIColor.green
        }
    }
    
    @IBOutlet weak var bSlider: UISlider!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    }
    
    @IBAction func rgbSliderChange(_ sender: AnyObject) {
        changeColor()
    }
    
}
