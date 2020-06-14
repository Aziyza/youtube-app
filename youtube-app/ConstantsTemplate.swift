//
//  ConstantsTemplate.swift
//  youtube-app
//
//  Created by Mac on 6/11/20.
//  Copyright © 2020 Mac. All rights reserved.
//
// Create your own API_KEY and uncomment the code below

import Foundation

struct Constants {

    static var API_KEY = ""
    static var PLAYLIST_ID = ""
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
