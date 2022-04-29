//
//  ContentView.swift
//  SpinningStar
//
//  Created by Winston Wang on 2022-04-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "star")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
