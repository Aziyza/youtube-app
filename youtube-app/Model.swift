//
//  Model.swift
//  youtube-app
//
//  Created by Mac on 6/11/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos() {
        
        // Create a URL Object
        guard let url = URL(string: Constants.API_URL) else {
            return
        }
        
        
        // Create a URL Session
        let session = URLSession.shared
        
        // Get a Data task from the URL Session Object
        let task = session.dataTask(with: url) { (data, response, error) in
            
            if error != nil || data == nil {
                print(error as Any)
                return
            }
            
            do {
                //Parsing data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let response = try decoder.decode(Response.self, from: data!)
                dump(response)
                
            } catch {
                
            }
            
            
        }
        
        //Kick off the task
        task.resume()
    }
}
