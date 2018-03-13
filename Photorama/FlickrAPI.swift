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
    private static let apiKey = "bd04a3068a9101df2b9df4fc67822454"
    private static func flickrURL(method: Method, parameters: [String:String]?) -> URL {

        var components =  URLComponents(string: baseURLString)!
        
        var queryItems = [URLQueryItem]()
        
        let baseParams = [
            "method": method.rawValue,
            "format": "json",
            "nojsoncallback" : "1",
            "api_key" : apiKey
        ]
        
        for (key, value) in baseParams {
            let item = URLQueryItem(name: key, value: value)
            queryItems.append(item)
        }
        
        
        if let additionalParams = parameters{
            for (key,value) in additionalParams {
                let item = URLQueryItem(name: key, value: value)
                queryItems.append(item)
            }
        }
        
        components.queryItems = queryItems

        return components.url!
    }

    static var interestingPhotosURL: URL {
        return flickrURL(method: .interestingPhotos, parameters: ["extras": "url_h,date_taken"])
    }
    
    
}
