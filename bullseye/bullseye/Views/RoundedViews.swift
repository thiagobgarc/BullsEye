//
//  RoundedViews.swift
//  bullseye
//
//  Created by Skills Academy 58 on 5/31/23.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    
    var systemName: String
    
    var body: some View {
    Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56, height:56)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"),
                        lineWidth: 2.0, antialiased: true)
            )
    }
}

struct RoundedImageViewFilled: View {
    
    var systemName: String
    
    var body: some View {
    Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .foregroundColor(Color("TextColor"))
            .frame(width: 56, height:56)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            }
        }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
