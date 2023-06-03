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

struct RoundRectTextView: View {
    
    var systemName: String
    
    var body: some View {
        Text(systemName)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: 68, height:56)
            .foregroundColor(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius: 21)
                    .stroke(lineWidth: 2.0)
                    .foregroundColor(Color("ButtonStrokeColor"))
            )
    }
    
    struct PreviewView: View {
        var body: some View {
            VStack {
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
                RoundedImageViewFilled(systemName: "list.dash")
                RoundRectTextView(systemName: "100")
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
}
