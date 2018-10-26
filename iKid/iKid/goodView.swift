//
//  goodView.swift
//  iKid
//
//  Created by Sarthak Turkhia on 10/25/18.
//  Copyright © 2018 Sarthak Turkhia. All rights reserved.
//

import UIKit

class goodView: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    var joke : [String] = []
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        joke.append("Knock knock.")
        joke.append("Who’s there?")
        joke.append("Etch.")
        joke.append("Etch who?")
    }
    
    @IBAction func flipView(_ sender: Any) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        if index == 0{
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            textLabel.text = joke[0]
            nextButton.setTitle("Next", for: .normal)
            index += 1
            image.isHidden = true
        }
        else if index == 4{
            index = 0
            nextButton.setTitle("Back", for: .normal)
            textLabel.text = ""
            image.isHidden = false
        }
            
        else{
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            textLabel.text = joke[index]
                index += 1
            
        }
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
