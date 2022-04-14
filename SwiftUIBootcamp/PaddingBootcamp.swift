//
//  PaddingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 14/04/2022.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack {
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 300, height: 200)
                    .shadow(color: Color.black.opacity(0.7), radius: 8, x: 4, y: 4)
                
                Text("RoundedRectangle with shadow with black color and parameters(width: 300, height: 200, cornerRadius: 10, shadow radius: 8, x: 4, y: 4)")
                    .font(.title2)
                    .foregroundColor(Color.yellow)
                    .multilineTextAlignment(.trailing)
                    .background(Color.cyan)
            } //: VSTACK
            .padding(.vertical, 20)
            .background(Color.red)
            .padding(.leading, 20)
            
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 300, height: 200)
                    .shadow(color: Color.black.opacity(0.7), radius: 8, x: 4, y: 4)
                
                Text("RoundedRectangle with shadow with black color and parameters(width: 300, height: 200, cornerRadius: 10, shadow radius: 8, x: 4, y: 4)")
                    .multilineTextAlignment(.leading)
                    .font(.title2)
                    .foregroundColor(Color.yellow)
                    .padding(.leading, 20)
                    .padding(.bottom, 20)
                    .background(Color.purple)
                    .padding(5)
            } //: VSTACK
            .background(Color.red)
        } //: VSTACK
        .padding(.horizontal, 5)
        .padding(.trailing, 30)
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
