//
//  DataService.swift
//  Lesson 15
//
//  Created by Marcello Lima on 26/09/21.
//

import Foundation

class DataService {
    
    static func getDataLoad() -> [Book] {
        //Create some dummy pizza data.
                
                // Create a path in the bunde
                let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
                //print("um...")
                
                // find URL
                if let path = pathString {
                    //print("dois...")
                    let url = URL.init(fileURLWithPath: path)
                    //print("três...")
                    // Find the Data.
                    do {
                        let data = try Data(contentsOf: url)
                        // JSON decoding
                        let decoder = JSONDecoder()
                        //print("quatro...")
                        do {
                            let booksData = try decoder.decode([Book].self, from: data)
//                            Nest code dosn't need because there is an id property in the object
//                            for r in booksData {
//                                r.id = UUID()
//                            }
                            return booksData
                        }
                        catch {
                            print(error)
                        }
                    }
                    catch {
                        print(error)
                    }
                }
        return [Book]()
    }

}
