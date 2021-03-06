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
    
    @IBOutlet weak var imageView: UIImageView!
    
    var labels = [String]()
    var images = [String]()
    var index = 0
    
    
    
    @IBAction func forwardPressed(_ sender: Any) {
        index += 1
        if index >= labels.count {
            index = 0
        }
        updateLabel()
    }
    
    @IBAction func backPressed(_ sender: Any) {
        index -= 1
        if index < 0 {
            index = labels.count-1
        }
        updateLabel()
    }
    
    
    
    @IBAction func closeTextPressed(_ sender: Any) {
        closeText.isHidden = true
        textToBeShown.isHidden = true
        displayText.isHidden = false
        imageView.isHidden = false
    }

    @IBAction func displayTextPressed(_ sender: Any) {
        closeText.isHidden = false
        textToBeShown.isHidden = false
        displayText.isHidden = true
        imageView.isHidden = true
    }
    
    
    
    func updateLabel() {
        textToBeShown.text = labels[index]
        imageView.image = UIImage(named: images[index])
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        labels = ["UPSL", "WNFC", "Western"]//, "Nevada", "FC", "Soccer", "Family", "Love"]
        images = ["cookies", "hand", "pancakes"]
        
        updateLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
