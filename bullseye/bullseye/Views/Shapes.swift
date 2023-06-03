//
//  Shapes.swift
//  bullseye
//
//  Created by Skills Academy 58 on 5/31/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
//                .fill(Color.blue)
                .inset(by: 10.0)
                .strokeBorder(Color.white, lineWidth: 20.0)
                .frame(width: 200, height: 100.0)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
