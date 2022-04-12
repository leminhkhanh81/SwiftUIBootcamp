//
//  ColorsGradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 12/04/2022.
//

import SwiftUI

struct ColorsGradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            //.fill(Color.yellow)
            //.fill(Color(red: 0.4627, green: 0.8392, blue: 1.0))
            //.shadow(color: .green.opacity(0.5), radius: 10, x: 5, y: 5)
//            .fill(
//                LinearGradient(colors: [Color.red, Color.blue], startPoint: .bottom, endPoint: .trailing)
//            )
//            .fill(
//                RadialGradient(gradient: Gradient(colors: [Color("CustomColor"), Color.yellow]), center: .bottomTrailing, startRadius: 300.0, endRadius: 20.0)
//            )
//            .fill(AngularGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), center: .bottomTrailing, startAngle: .degrees(45), endAngle: .degrees(45)))
            .fill(AngularGradient(gradient: Gradient(colors: [Color.blue, Color.red]), center: .topLeading, startAngle: .zero, endAngle: .degrees(45)))
            .frame(width: 300, height: 300)
            
    }
}

struct ColorsGradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsGradientsBootcamp()
    }
}
