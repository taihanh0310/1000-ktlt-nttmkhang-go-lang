//
//  ex.swift
//  ssadsds
//
//  Created by Drcom Asia on 3/29/19.
//  Copyright © 2019 Drcom Asia. All rights reserved.
//

import Foundation

var randomNumber = 1
var userGuess = 1
var continueGuessing = true
var keepPlaying = true
var input = ""

while(keepPlaying){
    randomNumber = Int(arc4random_uniform(101)) // get a random number between 0 - 100
    print("the random number to guess is : \(randomNumber)")
    while(continueGuessing){
        print("Pick a number random 0 to 100")
        
        // get input from keyboard
        input =  readLine() ?? "12"
        userGuess = Int(input) ?? 11
        
        if(userGuess == randomNumber){
            continueGuessing = false
        }
        else if(userGuess > randomNumber){
            print("\nYour guess is too high")
        }
        else{
            print("\nYour guess is too low")
        }
    }
    print("\nPlay again? Y or N ")
    input = readLine() ?? "Y"
    
    if(input == "N" || input == "n"){
        keepPlaying = false
    }
    continueGuessing = true
}
