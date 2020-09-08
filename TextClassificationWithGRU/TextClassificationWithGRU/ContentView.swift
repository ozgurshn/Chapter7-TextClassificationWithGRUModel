//
//  ContentView.swift
//  TextClassificationWithGRU
//
//  Created by ozgur on 8/6/20.
//  Copyright © 2020 com.ozgur. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var sentiment = ""
    @State var text = "super cool"
    var body: some View {
        VStack{
            TextField("Text", text: $text).padding()
            Button(action: {
                self.sentiment = GRUModel().predict(text: self.text)
            }){Text("Predict")}
            Text(sentiment).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





