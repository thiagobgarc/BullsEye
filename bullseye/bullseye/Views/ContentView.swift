//
//  ContentView.swift
//  bullseye
//
//  Created by Skills Academy 58 on 5/30/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionView(game: $game)
                SlidersView(sliderValue: $sliderValue)
               HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            }
        }
    }
}

struct InstructionView: View {
    
    @Binding var game: Game
    
    var body: some View {
        InstructionText(text: "🎯🎯🎯\nPut the Bullseye as close as you can")
            .padding(.leading, 30.0)
            .padding(.trailing, 30.0)
        BigNumberText(text: String(game.target))
    }
}


struct SlidersView: View {
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in: 1...100)
            Text("100")
                .font(.title3)
                .bold()
                .foregroundColor(Color("TextColor"))
        }
        .padding()
    }
}

struct HitMeButton: View {
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            print("Hello, SwiftUI!")
            alertIsVisible = true
        }) {
            Text("Hit Me".uppercased())
                .bold()
                .font(.title3)
        }
            .padding(20.0)
            .background(
                ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                }
            )
            .foregroundColor(Color.white)
            .cornerRadius(21.0)
            .overlay(
                RoundedRectangle(cornerRadius: 21.0)
                    .strokeBorder(Color.white, lineWidth: 2.0)
            )
        .alert(
            isPresented: $alertIsVisible,
            content: {
                let roundedValue: Int = Int(sliderValue)
                return Alert(title: Text("Hello there!"),
                             message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
            })
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
