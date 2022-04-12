//
//  TextsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 12/04/2022.
//

import SwiftUI

struct TextsBootcamp: View {
    var body: some View {
        Text("Hello, How are you to day? Where are you from?".localizedUppercase)
            .font(.headline)
            .fontWeight(.heavy)
            .foregroundColor(Color.red)
            .underline(true, color: .black)
            .baselineOffset(15)
            .italic()
            .opacity(0.7)
            .multilineTextAlignment(.center)
    }
}

struct TextsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextsBootcamp()
    }
}
