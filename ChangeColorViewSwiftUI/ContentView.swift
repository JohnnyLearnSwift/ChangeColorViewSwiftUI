//
//  ContentView.swift
//  ChangeColorViewSwiftUI
//
//  Created by Eugenie Tyan on 14.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSlider = Double.random(in: 0...255)
    @State private var greenSlider = Double.random(in: 0...255)
    @State private var blueSlider = Double.random(in: 0...255)
    
    var body: some View {
        VStack (spacing: 50) {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 100)
                .foregroundColor(Color(red: redSlider/255,
                                       green: greenSlider/255,
                                       blue: blueSlider/255))
            HStack {
                colorLabels()
                ValueLabels(redValue: redSlider,
                            greenValue: greenSlider,
                            blueValue: blueSlider)
                Sliders(redSlider: $redSlider,
                        greenSlider: $greenSlider,
                        blueSlider: $blueSlider)
            }
            Spacer()
        }
        .padding()
    }
}

struct colorLabels: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 25) {
            Text("Red")
            Text("Green")
            Text("Blue")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


