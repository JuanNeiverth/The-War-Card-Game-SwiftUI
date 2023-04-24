//
//  ContentView.swift
//  Challenger Chris
//
//  Created by Juan on 19/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            
            VStack {
                ZStack {
                    Image("toronto")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10.0)
                    VStack {
                        Text("CN Tower!")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding([.top, .leading, .trailing])
                        
                        
                        Text("Toronto")
                            .foregroundColor(Color.white)
                            .padding([.bottom, .leading, .trailing])
                    }
                        .background(Color.black)
                        .opacity(0.8)
                        .cornerRadius(10)
                }
                .padding()
                
                ZStack {
                    Image("london")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10.0)
                    VStack {
                        Text("Big Ben!")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding([.top, .leading, .trailing])
                        
                        
                        Text("London")
                            .foregroundColor(Color.white)
                            .padding([.bottom, .leading, .trailing])
                    }
                    .background(Color.black)
                    .opacity(0.8)
                    .cornerRadius(10)
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
