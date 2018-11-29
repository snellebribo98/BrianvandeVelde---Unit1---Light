//
//  ViewController.swift
//  Light
//
//  Created by Brian van de Velde on 01-11-18.
//  Copyright © 2018 Brian van de Velde. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var button: UIButton!
    
    var lightOn: Bool = true
    
    // if the button is pressed the light should change
    @IBAction func buttonPressed(_ sender: AnyObject)
    {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI()
    {
        // if button is pressed change background color and color statusbar
        view.backgroundColor = lightOn ? .white : .black
        UIApplication.shared.statusBarStyle = lightOn ? .default : .lightContent
        
        // if light is white, make text black
        if lightOn
        {
            button.setTitleColor(UIColor.black, for: UIControl.State.normal)
            button.setTitleColor(UIColor.gray , for: UIControl.State.highlighted)
        }
            
        // if light is black, make text white
        else if !lightOn
        {
            button.setTitleColor(UIColor.white, for: UIControl.State.normal)
            button.setTitleColor(UIColor.gray, for: UIControl.State.highlighted)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        updateUI()
    }


}

