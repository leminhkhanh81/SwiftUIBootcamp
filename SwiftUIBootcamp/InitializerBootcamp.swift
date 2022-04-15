//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 15/04/2022.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    //2 :
//    let count: Int = 25
//    let title: String = "Oranges"
//    let backgroundColor: Color = Color.orange
    
    //3 :
    let count: Int
    let title: String
    let backgroundColor: Color
    
    // default initialization without declaration
//    init(backgroundColor: Color, count: Int, title: String) {
//        self.backgroundColor = backgroundColor
//        self.count = count
//        self.title = title
//    }
    
    //4 : custom initialization
//    init(count: Int, title: String) {
//        self.count = count
//        self.title = title
//
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else if title == "Oranges" {
//            self.backgroundColor = .orange
//        } else {
//            self.backgroundColor = .green
//        }
//    }
    
    //5 : custom initialization with enum
    init(count: Int, fruit: Fruit) {
        self.count = count
        
//        if fruit == .apples {
//            self.title = "Apples"
//            self.backgroundColor = .red
//        } else if fruit == .oranges {
//            self.title = "Oranges"
//            self.backgroundColor = .orange
//        } else {
//            self.title = "Peaches"
//            self.backgroundColor = .green
//        }
        
        switch fruit {
        case .apples:
            self.backgroundColor = .red
            self.title = "Apples"
        case .oranges:
            self.title = "Oranges"
            self.backgroundColor = .orange
        case .peaches:
            self.title = "Peaches"
            self.backgroundColor = .green
        }
        
    }
    
    enum Fruit {
        case apples
        case oranges
        case peaches
    }
    
    var body: some View {
        VStack (spacing: 10) {
            //1 :
//            Text("5")
//                .font(.largeTitle)
//                .foregroundColor(Color.white)
//                .fontWeight(.medium)
//                .underline()
//
//            Text("Apples")
//                .font(.title2)
//                .foregroundColor(Color.white)
            
            //2 :
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .fontWeight(.medium)
                .underline()
            
            Text(title)
                .font(.title2)
                .foregroundColor(Color.white)
            
        }
        .frame(width: 200, height: 200)
        .background(backgroundColor)
        .cornerRadius(8)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        //2 :
//        InitializerBootcamp()
        
        //3 : default initialization
//        InitializerBootcamp(count: 35, title: "Peaches", backgroundColor: .green)
        
        //4 : custom initialization
//        InitializerBootcamp(count: 45, title: "Oranges")
        
        //5 : custom initialization with enum

        InitializerBootcamp(count: 55, fruit: .oranges)
            
//        InitializerBootcamp(count: 75, fruit: .peaches)
                
//        InitializerBootcamp(count: 95, fruit: .apples)
    }
}
