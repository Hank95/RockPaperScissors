//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Henry Pendleton on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    let choices = ["rock", "paper", "scissors"]
    @State private var correctAnswer = Int.random(in: 0...2)
    
    
    var body: some View {
        VStack {
            ForEach(choices, id: \.self ){ choice in
                Button(action: buttonAction){
                    Text(choice)
                        .background(.red)
                        .padding()
                        .cornerRadius(10)
                }
            }
            
        }
        .padding()
    }
    
    func buttonAction(){
        correctAnswer = Int.random(in: 0...2)
        print(correctAnswer)
    }
}

#Preview {
    ContentView()
}
