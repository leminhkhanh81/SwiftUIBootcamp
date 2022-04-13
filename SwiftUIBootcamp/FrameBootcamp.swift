//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 13/04/2022.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.title2)
            .foregroundColor(Color.blue)
            .fontWeight(.black)
            .background(Color.yellow)
        
            .frame(height: 100, alignment: .top)
            .background(Color.red)
        
            .frame(width:250, height: 150, alignment: .topTrailing)
            .background(Color.purple)
        
            .frame(maxWidth: .infinity, alignment: .trailing)
            .background(Color.pink)
        
            .frame(height: 400, alignment: .top)
            .background(Color.gray)
        
            .frame(maxHeight: .infinity)
            .background(Color.green)
            //.edgesIgnoringSafeArea(.all)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
