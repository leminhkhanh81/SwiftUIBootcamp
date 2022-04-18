//
//  GridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 16/04/2022.
//

import SwiftUI


//    let colums: [GridItem] = [ GridItem(.fixed(50), spacing: nil, alignment: nil) ]

//-------
//    let colums: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil)
//    ]

//--------
//    let colums: [GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
//    ]

//--------
//    let colums: [GridItem] = [
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
//    ]

//--------
let colums: [GridItem] = [
    GridItem(.flexible(), spacing: 6, alignment: nil),
    GridItem(.flexible(), spacing: 6, alignment: nil),
    GridItem(.flexible(), spacing: 6, alignment: nil)
]

struct GridBootcamp: View {
    var body: some View {

//        LazyVGrid(columns: colums) {
//            Rectangle()
//                .frame(width: 200, height: 200)
//            Rectangle()
//            Rectangle()
//            Rectangle()
//            Rectangle()
//        }
        
//        ScrollView {
//            Rectangle()
//                .fill(Color.gray)
//                .frame(height: 350)
//
//            LazyVGrid(columns: colums) {
//                ForEach(0 ..< 50) { Item in
//                    Rectangle()
//                        .frame(height: 50)
//                } //: FOREACH
//            } //: LAZYVGRID
//        } //: SCROLLVIEW
        
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: colums,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders], content: {
                
                
                Section("Section 1") {
                    ForEach(0 ..< 20) { Item in
                        Image(systemName: "\(Item).circle.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color.blue)
                    } //: FOREACH
                } //: SECTION
                
                
                Section("Section 2") {
                    ForEach(0 ..< 50) { Item in
                        Rectangle()
                            .frame(height: 50)
                    } //: FOREACH
                } //: SECTION
   
            })//: LAZYVGRID
            .padding(.bottom)
        } //: SCROLLVIEW
        .padding()
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
