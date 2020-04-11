//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var story = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let current = story.getCurrentStory()
        if(userAnswer == current.ch1){
            story.nextQuestion(goTo: current.dest1)
        }else{
            story.nextQuestion(goTo: current.dest2)
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        updateUI()
    }
    
    @objc func updateUI(){
        let current = story.getCurrentStory()
        storyLabel.text = current.question
        choice1Button.setTitle(current.ch1, for: .normal)
        choice2Button.setTitle(current.ch2, for: .normal)
    }
    
}

