//
//  ViewController.swift
//  iOS101-prework
//
//  Created by Aarya Awasthy on 8/24/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var uniLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        let randomColor = changeColor()
           view.backgroundColor = randomColor
    }
    
    //added new button to change text color randomly
    @IBAction func changeTextColor() {
        let randomColor = changeColor()
        nameLabel.textColor = randomColor
        uniLabel.textColor = randomColor
        roleLabel.textColor = randomColor
    }
    
    
    func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
}

