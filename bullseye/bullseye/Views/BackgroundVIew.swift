//
//  BackgroundVIew.swift
//  bullseye
//
//  Created by Skills Academy 58 on 5/31/23.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var game: Game
    
    var body: some View {
        VStack {
            TopView(game: $game)
        }
        .padding()
        .background(
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct TopView: View {
    
    @Binding var game: Game
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BackgroundVIew_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
