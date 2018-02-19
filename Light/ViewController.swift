//
//  ViewController.swift
//  Light
//
//  Created by Eli de Smet on 09/02/2018.
//  Copyright © 2018 Eli de Smet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // initializing variables
    var brightness: Double = 1
    var counter = 0
    @IBOutlet weak var text: UILabel!
    
    // function to update brightness lighter
    func lighter(){
        if brightness < 1 {
            brightness += 0.1
        }
    }
    
    // function to update brightness darker
    func darker(){
        if brightness > 0 {
            brightness -= 0.1
        }
    }
    
    // function to update UI
    func updateUI(){
        view.backgroundColor = UIColor.init(white: CGFloat(brightness), alpha: 1)
        
        // protecting user from using the app too much
        counter += 1
        if counter > 15 {
            text.text = "MAKE BETTER USE OF YOUR TIME!"
            if brightness > 0.5 {
                text.textColor = .black
            } else {
                text.textColor = .white
            }
        }
    }
    
    // plus button pressed
    @IBAction func plusPressed(_ sender: Any) {
        lighter()
        updateUI()
    }
    
    // minus button pressed
    @IBAction func minusPressed(_ sender: Any) {
        darker()
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // hidding status bar for better visuals
    override var prefersStatusBarHidden: Bool{
        return true
    }
}

