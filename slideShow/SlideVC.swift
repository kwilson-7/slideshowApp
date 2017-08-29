//
//  SlideVC.swift
//  slideShow
//
//  Created by Kyle on 8/28/17.
//  Copyright © 2017 WilsinhoBuilds. All rights reserved.
//

import UIKit

class SlideVC: UIViewController {

    
    @IBOutlet weak var displayText: UIButton!
    @IBOutlet weak var closeText: UIButton!
    @IBOutlet weak var textToBeShown: UILabel!
    
    
    
    @IBAction func forwardPressed(_ sender: Any) {
    }
    
    @IBAction func backPressed(_ sender: Any) {
    }
    
    
    
    @IBAction func closeTextPressed(_ sender: Any) {
        closeText.isHidden = true
        textToBeShown.isHidden = true
        displayText.isHidden = false
    }

    @IBAction func displayTextPressed(_ sender: Any) {
        closeText.isHidden = false
        textToBeShown.isHidden = false
        displayText.isHidden = true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
