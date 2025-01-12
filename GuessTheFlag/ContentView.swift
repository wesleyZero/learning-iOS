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
    @State private var score = 0
    
    @State private var showingScore = false
    @State private var scoreTitle = ""

    var body: some View {
        ZStack {
            //            LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom)
            RadialGradient(stops: [.init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.5)
                                   ,.init(color: Color(red: 0.76, green: 0.15, blue: 0.25), location: 0.1)
                                  ], center: .top, startRadius: 5, endRadius: 700)
            VStack(){
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack(spacing: 10){
                    VStack {
                        Text("Tap the flag of...")
                            .foregroundStyle(.secondary)
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
                .frame(maxWidth: .infinity)
                .padding(.vertical,20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding(40)
            .alert(scoreTitle, isPresented: $showingScore){
                Button("Continue", action: askQuestion)
            } message: {
                Text("Your score is \(score)")
            }
        }
        
        .ignoresSafeArea()
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Incorrect"
            score -= 1
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
