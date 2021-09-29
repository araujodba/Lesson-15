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
                        ForEach (0..<model.books.count) { index in
                        
                            NavigationLink(destination: BookRatingView(model: model, indexModel: index)) {
                                ZStack (alignment:.center) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .padding()
                                        .shadow(color: Color.black.opacity(0.5), radius: 10, x: -4, y: 8)
                                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 1, y: 1)
                                        .foregroundColor(.white)
                                        
                                    VStack {
                                        VStack (alignment:.leading) {
                                            HStack {
                                                Text(model.books[index].title).font(.headline).bold()
                                                Spacer()
                                                Toggle("", isOn: $model.books[index].isFavourite)
                                                    .toggleStyle(ToggleStyleView.CheckToggleStyle())
                                            }
                                            Text(model.books[index].author).font(.subheadline).italic()
                                            
                                        }
                                        Image(model.books[index].image!).resizable().scaledToFit()
                                    }.padding(30)
                                    
                                    
                                    
                                    
                                }.frame(width: geo.size.width - 15, height: 2 * geo.size.height / 3, alignment: .top)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                            }
                            
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
