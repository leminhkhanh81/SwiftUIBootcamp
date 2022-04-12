//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 12/04/2022.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            //.font(.largeTitle)
            //.font(.system(size: 100))
            .foregroundColor(Color.pink)
            //.aspectRatio(contentMode: .fill)
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
