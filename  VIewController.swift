//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let str : String = "note" + "\(sender.tag)"
        
        if let soundURL = Bundle.main.url(forResource: "\(str)", withExtension: "wav"){
            var mysound:SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mysound)
            //play
            AudioServicesPlaySystemSound(mysound);
        }
        
    }
    
  

}

