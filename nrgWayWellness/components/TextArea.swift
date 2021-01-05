//
//  TextArea.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/14/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}

// usage (TextField with placeholder):

struct ContentView: View {
    @State var text = ""

    var body: some View {
        CustomTextField(
            placeholder: Text("placeholder").foregroundColor(.red),
            text: $text
        )
    }
}


 

struct TextArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().padding(10)
            .font(Font.system(size: 15, weight: .medium, design: .serif))
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(Color.blue)
    }
}
