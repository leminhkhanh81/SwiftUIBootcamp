//
//  ContentView.swift
//  RGBullsEyeApp
//
//  Created by Le Minh Khanh on 18/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @State var game = Game()
    @State var guess: RGB
    @State var showScore = false
    
    //MARK: - BODY
    var body: some View {
        VStack {
   
            RectangleColor(color: game.taget)
    
            if !showScore {
                Text("R: ???  G: ???  B: ???")
                    .font(.title2)
                    .foregroundColor(Color.blue)
                    .padding(.bottom)
            } else {
                Text("R: \(Int(game.taget.red * 255.0))  G: \(Int(game.taget.green * 255.0))  B: \(Int(game.taget.blue * 255.0))")
                    .font(.title2)
                    .foregroundColor(Color.blue)
                    .padding(10)
                    .background(Color.yellow)
                    .cornerRadius(5)
                    .padding(.bottom)
            }
            
            RectangleColor(color: guess)
            
            Text("R: \(Int(guess.red * 255.0))  " + "G: \(Int(guess.green * 255.0))  " + "B: \(Int(guess.blue * 255.0))")
                .font(.title2)
                .foregroundColor(Color.blue)
                .padding(.bottom)
            
            ColorSlider(value: $guess.red, trackColor: .red)
            ColorSlider(value: $guess.green, trackColor: .green)
            ColorSlider(value: $guess.blue, trackColor: .blue)
            
            Button(action: {
                showScore = true
                game = Game()
            }, label: {
                Text("Hit Me!")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.yellow)
            }).alert(isPresented: $showScore) {
                Alert(title: Text("Your Score"),
                      message: Text("\(game.check(guess: guess))"),
                      dismissButton: .default(Text("Got it!")))
            } //: BUTTON
            .frame(maxWidth: .infinity)
            .frame(height: 44)
            .background(Color.blue)
            .cornerRadius(8)
            .padding()
        } //:VSTACK
        //.padding(.bottom)
    } //:BODY
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(guess: RGB(red: 0.25, green: 0.11, blue: 0.5))
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var trackColor: Color
    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value)
                .accentColor(trackColor)
            Text("255")
        }
        .padding(.horizontal)
    }
}

struct RectangleColor: View {
    let color: RGB
    var body: some View {
        Rectangle()
            .fill(Color(rgb: color))
            .frame(width: 255, height: 255, alignment: .center)
            .cornerRadius(20)
    }
}
