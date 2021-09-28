//
//  ToggleStyleView.swift
//  Lesson 15
//
//  Created by Marcello Lima on 27/09/21.
//

import SwiftUI

struct ToggleStyleView: View {
    var body: some View {
        Text("")
    }
    struct CheckToggleStyle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {
            Button {
                configuration.isOn.toggle()
            } label: {
                Label {
                    configuration.label
                } icon: {
                    Image(systemName: configuration.isOn ? "star.fill" : "star")
                        .renderingMode(.original)
                        .imageScale(.large)
                }
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct ToggleStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStyleView()
    }
}



