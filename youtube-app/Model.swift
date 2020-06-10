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
            
            print("RESPONSE🥳", response as Any)
            
            //Parsing data into video objects
        }
        
        //Kick off the task
        task.resume()
    }
}
