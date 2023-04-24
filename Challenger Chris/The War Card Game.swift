//
//  The War Card Game.swift
//  Challenger Chris
//
//  Created by Juan on 19/04/23.
//

import SwiftUI

struct The_War_Card_Game: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var scorePlayer = 0
    @State var scoreCPU = 0
    
    
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
                
                Button(action:{
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        scorePlayer += 1
                    }
                    if cpuRand > playerRand {
                        scoreCPU += 1
                    }


                   
                }, label: {
                    Image("dealbutton")
                })
                    
                Spacer()
                    
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .padding(.bottom, 10.0)
                        Text(String(scorePlayer))
                        
                    }
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding()
                    
                    Spacer()
                    
                    VStack{
                        
                        Text("CPU")
                            .padding(.bottom, 10.0)
                        
                        Text(String(scoreCPU))
                        
                    }
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding()
                    
                    Spacer()
                }
                
                
                Spacer()
            }
        }
    }
}
    

struct The_War_Card_Game_Previews: PreviewProvider {
    static var previews: some View {
        The_War_Card_Game()
    }
}
