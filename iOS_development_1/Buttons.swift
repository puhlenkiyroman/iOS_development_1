//
//  Buttons.swift
//  iOS_development_1
//
//  Created by Guest on 22.11.2023.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        HStack(alignment: .top, spacing: 13) {
            Image("sun")
                .padding(.trailing, 4)
        }
    }
}
struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
