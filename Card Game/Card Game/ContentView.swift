//
//  ContentView.swift
//  Card Game
//
//  Created by Santi Gómez on 27/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    @State var winner = ""
    @State var isGameOver = false
    var body: some View {
        
        ZStack {
            Spacer()
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                .disabled(isGameOver)

                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
                
                Text(winner)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
    
    func deal() {
        // Randomize player cards
        let playerNumber: Int = Int.random(in: 2...14)
        playerCard = "card" + String(playerNumber)
        
        // Randomize cpu cards
        let cpuNumber: Int = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuNumber)
        // Update Scores
        if playerNumber > cpuNumber {
            playerScore += 1
        } else if playerNumber < cpuNumber {
            cpuScore += 1
        } else {
            print("Draw")
        }
        
        // Winner conditions
        if playerScore == 10 {
            winner = "Player Wins"
            isGameOver = true
            delayResetGame()
        } else if cpuScore == 10 {
            winner = "CPU Wins"
            isGameOver = true
            delayResetGame()
        }
    }
    
    func delayResetGame() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            resetGame()
        }
    }
    
    func resetGame() {
        playerScore = 0
        cpuScore = 0
        playerCard = "back"
        cpuCard = "back"
        winner = ""
        isGameOver = false
    }
}

#Preview {
    ContentView()
}
