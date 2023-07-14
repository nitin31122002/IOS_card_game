//
//  ContentView.swift
//  war-challenge
//
//  Created by Nitin Chowdary on 27/05/23.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack{

            Image("background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    if (playerRandom > cpuRandom){
                        playerScore += 1
                    }
                    else if (cpuRandom > playerRandom){
                        cpuScore += 1
                    }
                    
                    
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("PLAYER")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 12.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    .padding(.bottom, 20.0)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                            
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                    }
                    .padding(.bottom, 10.0)
                    
                    Spacer()
                    
                }
                Spacer()
                
            }
            
            .padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
