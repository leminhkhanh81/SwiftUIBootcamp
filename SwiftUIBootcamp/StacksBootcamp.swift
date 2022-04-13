//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Le Minh Khanh on 13/04/2022.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack() {
            Rectangle()
                .fill(Color.pink)
                .frame(width: 100, height: 100)
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
