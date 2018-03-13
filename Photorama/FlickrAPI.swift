//
//  FlickrAPI.swift
//  Photorama
//
//  Created by Fatih inan on 2018-03-12.
//  Copyright © 2018 Fatih inan. All rights reserved.
//

import Foundation

enum Method: String {
    case interestingPhotos = "flickr.interestingness.getList"
    
    
}

struct FlickrAPI {
    
    private static let baseURLString = "https://api.flicker.com/services/rest"
    
    private static func flickrURL(method: Method, parameters: [String:String]?) -> URL {
        return URL (string: "")!
    }

    static var interestingPhotosURL: URL {
        return flickrURL(method: .interestingPhotos, parameters: ["extras": "url_h,date_taken"])
    }
    
    
}
