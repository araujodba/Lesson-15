//
//  BookRatingView.swift
//  Lesson 15
//
//  Created by Marcello Lima on 27/09/21.
//

import SwiftUI

struct BookRatingView: View {
    
    @ObservedObject var model: BookModel = BookModel()
    let indexModel:Int

    var body: some View {
        
        VStack(alignment:.leading) {
            
                VStack (alignment: .center) {
                    
                    Text("Read Now!").font(.title)

                    
                    
                    
                        NavigationLink(destination: {
                            ReadingView(model: model, indexModel:indexModel)
                                
                                
                                })
                            {
                                    Image(model.books[indexModel].image!)
                                        .resizable()
                                        .scaledToFit()
                                        .padding(.top, 5)
                                        .padding(.bottom, 25)
                                        
                                        
                            }
                    
                    
                        
                    
                
                    
                    Text("Mark for later!")
                        .bold()
                        
                    
                    Toggle("", isOn: $model.books[indexModel].isFavourite)
                        .toggleStyle(ToggleStyleView.CheckToggleStyle())
                        .padding(.bottom, 20)
                        .padding(.top, 10)
                    
                    
                        


                   
                    Text("Rate \(model.books[indexModel].title)")
                            .bold()
                    Picker("", selection: $model.books[indexModel].rating) {
                            Text("1").tag(1)
                            Text("2").tag(2)
                            Text("3").tag(3)
                            Text("4").tag(4)
                            Text("5").tag(5)
                        }.pickerStyle(.segmented)
                    Spacer()
                }
                
            
            Spacer()
                
        
        Spacer()
            
        }
            .padding(.horizontal,30).padding(.vertical, 0)
            .navigationTitle(Text(model.books[indexModel].title))
    }
    
    
}

struct BookRatingView_Previews: PreviewProvider {
    static var previews: some View {
        BookRatingView(model: BookModel(), indexModel: 0)
    }
}
