//
//  ViewController.swift
//  IOS-app1
//
//  Created by Mario Diaz on 1/31/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var L1: UILabel!
    @IBOutlet weak var L2: UILabel!
    @IBOutlet weak var L3: UILabel!
    
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
            let randomColor = changeColor()
            view.backgroundColor = randomColor
            
            if isColorDark(color: randomColor) {
                L1.textColor = .white
                L2.textColor = .white
                L3.textColor = .white
            } else {
                L1.textColor = .black
                L2.textColor = .black
                L3.textColor = .black
            }
        }
    
    func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
    
    func isColorDark(color: UIColor) -> Bool {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        color.getRed(&red, green: &green, blue: &blue, alpha: nil)
        
        // Calculating the luminance of the color (formula found on internet)
        let brightness = 0.299 * red + 0.587 * green + 0.114 * blue
        return brightness < 0.5
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



