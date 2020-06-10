//
//  Constants.swift
//  youtube-app
//
//  Created by Mac on 6/11/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyBC9A_AcHmI1WNNgSdrxGutRfBcHyz9g3c"
    static var PLAYLIST_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
