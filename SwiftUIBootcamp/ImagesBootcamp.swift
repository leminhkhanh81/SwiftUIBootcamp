//
//  ImagesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 12/04/2022.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("google")
            .renderingMode(.template) // 1.
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.green) // 2.
//        Image("songoku")
//            .resizable()
//            //.cornerRadius(150)
//            .scaledToFit()
//            //.scaledToFill()
////            .clipShape(
////                //Circle()
////                //RoundedRectangle(cornerRadius: 25)
////                Ellipse()
////            )
//            .shadow(color: .black, radius: 15, x: 5, y: 5)
//            .border(.green, width: 5)
//            .frame(width: 300, height: 400)
//            .clipped()
    }
}

struct ImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootcamp()
    }
}
