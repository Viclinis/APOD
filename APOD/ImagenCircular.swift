//
//  ImagenCircular.swift
//  APOD
//
//  Created by victor tique on 27/09/21.
//

import SwiftUI

struct ImagenCircular: View {
    var body: some View {
        Image("vic")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct ImagenCircular_Previews: PreviewProvider {
    static var previews: some View {
        ImagenCircular()
    }
}
