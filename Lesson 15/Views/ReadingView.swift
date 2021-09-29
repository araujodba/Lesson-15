//
//  ReadingView.swift
//  Lesson 15
//
//  Created by Marcello Lima on 28/09/21.
//

import SwiftUI

struct ReadingView: View {
    @ObservedObject var model: BookModel = BookModel()
    let indexModel:Int
    
    var body: some View {

        
            GeometryReader { geo in
            
                
                    TabView {
                        ForEach(0..<model.books[indexModel].content.count) { index in
                            VStack{
                                ScrollView {
                                    Text(model.books[indexModel].content[index])
                                        .font(.callout)
                                        .lineSpacing(10)
                                }
                                Spacer()
                                Text("-" + String(index + 1) + "-").padding(.top, 10)
                                    
                            }.frame(width: geo.size.width - geo.size.width/60, height: geo.size.height - geo.size.height/18, alignment: .leading)
                                
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never ))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            }
            
        
    }
}

struct ReadingView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingView(model: BookModel(), indexModel: 0)
    }
}
