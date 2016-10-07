//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    
    @IBOutlet weak var animalEmojiLabel: UILabel!
    
    
    @IBOutlet weak var animalNameLabel: UILabel!
    
    
    var animalName: String?
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let animalName = animalName {
            
            animalNameLabel.text = animalName
            navigationItem.title = animalName
            
            
            let animal = nameToEmoji(animalName)
            animalEmojiLabel.text = animal
            
        }
    }
    
    func nameToEmoji(_ animalName: String) -> String {
        
        switch animalName {
            
        case "Dog":
            return "🐶"
        case "Cat":
            return "🐱"
        case "Mouse":
            return "🐭"
        case "Hamster":
            return "🐹"
        case "Bunny":
            return "🐰"
        case "Panda":
            return "🐼"
        case "Lion":
            return "🦁"
        case "Pig":
            return "🐷"
        case "Frog":
            return "🐸"
        case "Octopus":
            return "🐙"
        default:
            return ""
        }
        
    }
    
}
