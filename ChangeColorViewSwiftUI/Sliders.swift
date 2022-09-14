//
//  Sliders.swift
//  ChangeColorViewSwiftUI
//
//  Created by Eugenie Tyan on 15.09.2022.
//

import SwiftUI

struct Sliders: View {
    @Binding var redSlider: Double
    @Binding var greenSlider: Double
    @Binding var blueSlider: Double
    var body: some View {
        VStack (alignment: .trailing, spacing: 14) {
            Slider(value:  $redSlider, in: 0...255, step: 1)
                .accentColor(.red)
            Slider(value:  $greenSlider, in: 0...255, step: 1)
                .accentColor(.green)
            Slider(value:  $blueSlider, in: 0...255, step: 1)
                .accentColor(.blue)
        }
    }
}

struct Sliders_Previews: PreviewProvider {
    static var previews: some View {
        Sliders(redSlider: .constant(0),
                greenSlider: .constant(0),
                blueSlider: .constant(0))
    }
}
