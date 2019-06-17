//
//  ContentView.swift
//  SwiftUiTest
//
//  Created by Galo Guartatanga on 6/16/19.
//  Copyright © 2019 NA. All rights reserved.
//

import SwiftUI
import Alamofire
import AlamofireImage

struct ContentView : View {
    
    // MARK: - Variables
  @State private var imageIcon =  Image(
        systemName: "link"
    )
    // MARK: -Body
    var body: some View {
        // declarative
        VStack (alignment: .center, spacing: 10) {
                Image("avatar").shadow(color: .gray, radius: 10, x: 5, y: 5)
                Text("Hola mundo").font(.title).color(.blue)
                Text("Probando SwiftUI en Xcode 11 ").lineLimit(nil).font(.body).multilineTextAlignment(.center)
            Button(action: {
                Alamofire.request("https://cdn4.iconfinder.com/data/icons/logos-3/504/Swift-2-512.png").responseImage {
                    (image) in
                        self.imageIcon = Image(uiImage: image.result.value!)
                }
            }) {
                imageIcon.resizable().frame(width:30, height: 20)
            }.foregroundColor(.gray)
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
