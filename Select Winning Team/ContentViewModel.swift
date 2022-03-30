//
//  ContentViewModel.swift
//  Select Winning Team
//
//  Created by Brianna King on 12/20/21.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published
    var winner: String = ""
    
    func selectWinner() {
        // randomly select number 0, 1, or 2
        let randomInt = Int.random(in: 0..<3)
        
        // if randomInt is 0 then Blue team wins,
        // else if randomInt is 1 then Red team wins,
        // else Yellow is winner
        // TODO: write if else statement to update winner variable to team that won
        if  randomInt == 0 {
            winner = "blue"
        } else if randomInt == 1 {
            winner = "red"
        }  else {
            winner = "yellow"
        }
    }
}
