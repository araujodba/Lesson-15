//
//  ContentView.swift
//  Lesson 15
//
//  Created by Marcello Lima on 26/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model: BookModel = BookModel()
    
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                ScrollView {
                    VStack {
                        ForEach (model.books) { item in
                        
                            ZStack (alignment:.topLeading) {
                                RoundedRectangle(cornerRadius: 25)
                                    .padding()
                                    .shadow(color: Color.black.opacity(0.5), radius: 10, x: -4, y: 8)
                                    .shadow(color: Color.black.opacity(0.3), radius: 5, x: 1, y: 1)
                                    .foregroundColor(.white)
                                    
                                VStack (alignment:.leading) {
                                    Spacer()
                                    Text(item.title).font(.title).bold()
                                    Spacer()
                                    Text(item.author).font(.title2).italic()
                                    Image(item.image!).resizable().scaledToFit()
                                }.padding(40)
                            }.frame(width: geo.size.width, height: 700, alignment: .top)
                        }
                    }
                }.navigationTitle("My Library")
            }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
