//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct Story {
    let question: String
    let ch1: String
    let ch2: String
    let dest1: Int
    let dest2: Int
    
    init(title: String, choice1: String,  choice1Destination: Int, choice2: String, choice2Destination: Int) {
        question = title
        ch1 = choice1
        ch2 = choice2
        dest1 = choice1Destination
        dest2 = choice2Destination
    }
}
