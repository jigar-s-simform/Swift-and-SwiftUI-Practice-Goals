//
//  ContentView.swift
//  SwiftUIFirstApp
//
//  Created by Jigar Rajput on 07/04/24.
//

import SwiftUI

struct ContentView: View {
   @State private var playerCard = "card2"
   @State private var cpuCard = "card3"
   @State private var playerScore = 0
   @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
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
                    
                    let playerRandomNumber  = Int.random(in: 2...14)
                    let cpuRandomNumber = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRandomNumber)
                    cpuCard = "card" + String(cpuRandomNumber)
                    
                    if(playerRandomNumber > cpuRandomNumber) {
                        playerScore += 1
                    }
                    else if cpuRandomNumber > playerRandomNumber {
                        cpuScore += 1
                    }
                } label: {
                    Image("dealbutton")
                }

              
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            
                    }
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
