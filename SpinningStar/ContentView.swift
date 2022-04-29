//
//  ContentView.swift
//  SpinningStar
//
//  Created by Winston Wang on 2022-04-29.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: stored properties
    
    //1. initial state of rotation for the star
    @State var starRotation = 0.0
    
    //MARK: computed properties
    var body: some View {
        Image(systemName: "star")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
            .rotation3DEffect(.degrees(starRotation), axis: (x: 0, y: 1, z: 0))
        //trigger the state change with a tap
            .onTapGesture {
                withAnimation(
                    Animation
                        .easeInOut(duration: 2.0)
                ) {
                    //3. rotate the star twice (change rotation state)
                    starRotation += 360.0 * 2
                }
            }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
