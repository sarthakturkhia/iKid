//
//  punView.swift
//  iKid
//
//  Created by Sarthak Turkhia on 10/25/18.
//  Copyright © 2018 Sarthak Turkhia. All rights reserved.
//

import UIKit

class punView: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    var flip = false
    var joke : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        joke.append("Jimmy felt Happy.")
        joke.append("That's why Happy slapped Jimmy.")
        
    }
    
    @IBAction func flipView(_ sender: Any) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        if flip{
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            textLabel.text = joke[1]
            nextButton.setTitle("Back", for: .normal)
        }
        else{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            textLabel.text = joke[0]
            nextButton.setTitle("Next", for: .normal)
        }
        flip = !flip
        UIView.commitAnimations()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
