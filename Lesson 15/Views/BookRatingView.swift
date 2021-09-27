//
//  BookRatingView.swift
//  Lesson 15
//
//  Created by Marcello Lima on 27/09/21.
//

import SwiftUI

struct BookRatingView: View {
    
    @ObservedObject var book: Book

    var body: some View {
        
        VStack (alignment:. leading) {
            Text(book.title)
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 20)
                
            

            VStack (alignment: .center) {
                
                Text("Read Now!").font(.title)

                Image(book.image!)
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 5)
                    .padding(.bottom, 25)
            
                
                    Text("Mark for later:")
                        .bold()
                        .padding(.bottom, 10)

                
                
                    


               
                Text("Rate \(book.title)")
                        .bold()
                    Picker("", selection: $book.rating) {
                        Text("1").tag(1)
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }.pickerStyle(.segmented)
                    .padding(.horizontal)
                        
            }
        
        }.padding(.horizontal,30)
    }
    
    
}

struct BookRatingView_Previews: PreviewProvider {
    static var previews: some View {
        BookRatingView(book: BookModel().books[0])
    }
}
