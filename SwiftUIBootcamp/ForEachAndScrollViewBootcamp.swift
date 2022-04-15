//
//  ForEachAndScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 15/04/2022.
//

import SwiftUI

struct ForEachAndScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach (0..<10) { Index in
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(15)
                                .frame(width: 250, height: 150)
                                .padding()
                                .shadow(color: .black.opacity(0.8), radius: 4, x: 8, y: 8)
                                .overlay(
                                    Text("I'm a Rectangle")
                                        .font(.title2)
                                        .foregroundColor(.pink)
                                        .fontWeight(.medium)
                                )
                        }
                    }
                })
            }
        }
    }
}

struct ForEachAndScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachAndScrollViewBootcamp()
    }
}
