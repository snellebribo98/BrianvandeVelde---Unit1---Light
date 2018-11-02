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
    var lightOn: Bool = true
    
    @IBAction func buttonPressed(_ sender: AnyObject)
    {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI()
    {
            view.backgroundColor = lightOn ? .white : .black
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        updateUI()
    }


}

