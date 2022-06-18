//
//  ContentView.swift
//  Bonk counter
//
//  Created by T Krobot on 21/5/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var count = 0
    @State var phase = true
    
    var body: some View {
        VStack{
            Text("\(count) times bonked")
                .font(.system(size: 32, weight: .bold, design: .rounded))
            if phase {
                Image("not bonk")
                    .resizable()
            }
            else {
                Image("bonk")
                    .resizable()
            }
            Button {
                count = count + 1
                phase = !phase
                withAnimation(.easeInOut(duration: 0.001).delay(0.08)) {
                phase = true
                }
            } label: {
                Text("Bonk")
                   
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()
                    .background(.brown)
                    .cornerRadius(20)
            }
            .transaction { transaction in
                transaction.animation = nil}
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
