//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Wesley Johanson on 1/10/25.
//
import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
//    var userSelection = 0
    
    @State private var showingScore = false
    @State private var scoreTitle = ""

    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom)
            VStack(spacing: 30){
                VStack {
                    Text("Tap the flag of...")
                        .font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer])
                        .bold()
                        .font(.largeTitle.weight(.semibold))
                }
                
            
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
//                            .border(.ultraThickMaterial)
//                            .clipShape(.rect(cornerRadius: 5))
                            .clipShape(.capsule)
                            .shadow(radius: 5)
                    }
                }
            
            }
            
        }
        .ignoresSafeArea()
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ...")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Incorrect"
        }
        showingScore = true
        
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
