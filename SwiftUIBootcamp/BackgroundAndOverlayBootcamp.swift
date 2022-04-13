//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 13/04/2022.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 35))
                    .foregroundColor(Color.pink)
            )
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.cyan, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.blue.opacity(0.5), radius: 8, x: 4, y: 8)
                    .overlay(alignment: .bottomTrailing, content: {
//                        Image(systemName: "heart.fill")
//                            .font(.title)
//                            .foregroundColor(Color.pink)
                        Circle()
                            .fill( Color.pink
//                                LinearGradient(colors: [Color.red, Color.purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .frame(width: 30, height: 30)
                            .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 5, y: 5)
                            .overlay(
                                Text("5")
                                    .font(.caption)
                                    .foregroundColor(Color.blue)
                                    .fontWeight(.semibold)
                                    .background(
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 27, height: 27)
                                    )
                            )
                    })
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
