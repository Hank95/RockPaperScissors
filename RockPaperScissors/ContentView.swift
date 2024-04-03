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
    @State private var resultTitle = "Pick an option"
    @State private var points = 0
    @State private var round = 1
    
    
    var body: some View {
        ZStack{
            LinearGradient(colors:[.red, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack {
                Spacer()
                Text(resultTitle)
                    .foregroundStyle(.white)
                    .padding()
                    .font(.largeTitle.weight(.semibold))
                ForEach(choices.indices, id: \.self ){ index in
                    Button(action:{ self.buttonAction(index)}){
                        Text(choices[index].capitalized)
                        
                            .font(.system(size: 24))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                    }
                    .frame(width: 200)
                    .background(.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                }
                Spacer()
                Spacer()
                
            }
            .padding()
        }
    }
    
    func buttonAction(_ index:Int){
        if(index == correctAnswer){
            
        }
        correctAnswer = Int.random(in: 0...2)
        print(correctAnswer)
    }
}

#Preview {
    ContentView()
}
