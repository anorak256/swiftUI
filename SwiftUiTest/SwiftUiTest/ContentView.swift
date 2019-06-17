//
//  ContentView.swift
//  SwiftUiTest
//
//  Created by Galo Guartatanga on 6/16/19.
//  Copyright © 2019 NA. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        // declarative
        VStack (alignment: .center, spacing: 10) {
                Image("avatar").shadow(color: .gray, radius: 10, x: 5, y: 5)
                Text("Hola mundo").font(.title).color(.blue)
                Text("Probando SwiftUI en Xcode 11 ").lineLimit(nil).font(.body).multilineTextAlignment(.center)
            }.padding(10)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
