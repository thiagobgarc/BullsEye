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
            Spacer()
            BottomView(game: $game)
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
        HStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash")
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        Color.gray
            .frame(width: 56, height: 56)
    }
}

struct BottomView: View {
    
    @Binding var game: Game
    
    var body: some View {
        HStack {
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.score))
        }
    }
}

struct BackgroundVIew_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
