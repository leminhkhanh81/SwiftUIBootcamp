//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 13/04/2022.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        
        //MARK: - EX 3
        VStack (spacing: 100){
            HStack (alignment: .bottom, spacing: 20){
                Text("Add to card:")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                
                Text("5")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .fontWeight(.heavy)
            } //: HSTACK
            .frame(width: 200, height: 200)
            .background(Color.yellow)
            .cornerRadius(10)
            
            Rectangle()
                .fill(Color.gray)
                .frame(width: .infinity, height: 10)
            
            VStack {
                Text("Add to card:")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                
                Text("5")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .fontWeight(.heavy)
            } //: VSTACK
            .background(
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 150, height: 150)
            )
            
        } //: VSTACK
        
        //MARK: - EX 2
//        VStack (spacing: 100){
//            ZStack {
//                Circle()
//                    .frame(width: 200, height: 200)
//
//                Text("10")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.white)
//                    .fontWeight(.bold)
//            } //: ZSTACK
//
//            Text("10")
//                .font(.largeTitle)
//                .foregroundColor(Color.white)
//                .fontWeight(.bold)
//                .background(
//                    Circle()
//                        .frame(width: 200, height: 200)
//                )
//
//        } //: VSTACK
        
        //MARK: - EX 1
//        ZStack {
//            VStack(alignment: .leading) {
//                Rectangle()
//                    .fill(Color.pink)
//                    .frame(width: 200, height: 200)
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 150, height: 150)
//                HStack (alignment: .bottom, spacing: 20) {
//                    Rectangle()
//                        .fill(Color.green)
//                    .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(Color.green)
//                    .frame(width: 100, height: 100)
//
//                    Rectangle()
//                        .fill(Color.green)
//                    .frame(width: 50, height: 50)
//                } //: HSTACK
//                .background(
//                    LinearGradient(colors: [Color.black, Color.white], startPoint: .top, endPoint: .bottom)
//                )
//            } //: VSTACK
//        } //: ZSTACK
//        .frame(width: 400, height: 550, alignment: .topLeading)
//        .background(Color.purple)
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
