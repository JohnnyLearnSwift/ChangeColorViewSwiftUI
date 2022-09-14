//
//  ValueLabels.swift
//  ChangeColorViewSwiftUI
//
//  Created by Eugenie Tyan on 15.09.2022.
//

import SwiftUI

struct ValueLabels: View {
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        VStack (alignment: .trailing, spacing: 25) {
            Text("\(lround(redValue))")
            Text("\(lround(greenValue))")
            Text("\(lround(blueValue))")
        }
        .frame(width: 40)
    }
}

struct ValueLabels_Previews: PreviewProvider {
    static var previews: some View {
        ValueLabels(redValue: 1, greenValue: 1, blueValue: 1)
    }
}
