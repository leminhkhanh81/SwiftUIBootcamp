//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 14/04/2022.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            
            HStack{
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.largeTitle)
            .padding(.horizontal)
            .background(Color.orange)
            
            Spacer()
                .frame(height: 50)
            
            HStack (spacing: 0){
                
                Spacer(minLength: 0)
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
                
                Spacer()
                
                Rectangle()
                    .fill(Color.pink)
                    .frame(width: 100, height: 100)
                
                Spacer(minLength: 200)
            } //: HSTACK
            .background(Color.purple)
            
            Spacer()
                .frame(width: 10, height: 200)
                .background(Color.yellow)
            
            HStack {
                Rectangle()
                    .fill(Color.brown)
                    .frame(width: 100, height: 100)
                Spacer()
                
                Rectangle()
                    .fill(Color.pink)
                    .frame(width: 150, height: 150)
                
                Spacer()
                
            } //: HSTACK
            .background(Color.purple)
            
            Spacer()
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 50)
            
        } //: VSTACK
        .padding(.vertical)
        .background(Color.cyan)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
