//
//  ContentView.swift
//  Select Winning Team
//
//  Created by Brianna King on 12/20/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject
    var viewModel: ContentViewModel = ContentViewModel()
    
    @State var buttonTitle: String = "Not Selected"
    
    @State var count: Int = 0
    
    @State var winCount: Int = 0
    
    var body: some View {
        VStack {
            
            Text("Select Your Team:")
                .font(.title)
            
            HStack{
            Group{
                Button(action: {
                           buttonTitle = "Blue"
                    viewModel.selectWinner()
                    if(viewModel.winner == "Blue") {
                        winCount += 1
                    }
                    count += 1
                       }) {
                           Text("Blue")
                       }
            }
            .frame(width:100, height:100)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .padding(10)
            
            Group{
                Button(action: {
                           buttonTitle = "Red"
                    viewModel.selectWinner()
                    if(viewModel.winner == "Red") {
                        winCount += 1
                    }
                    count += 1
                       }) {
                           Text("Red")
                       }
            }
            .frame(width:100, height:100)
            .background(Color.red)
            .foregroundColor(Color.white)
            .padding(10)
            }
            
            
            
            Text("Team " + buttonTitle)
                .font(.title2)
                .padding()
            
            
            Text("The winner is: " + viewModel.winner)
                .padding()
            
            HStack{
            Text("Games Played: \(count) ")
                .foregroundColor(Color.gray)
                .font(.system(size: 14))
                
                Text("Wins: \(winCount) ")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 14))
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
