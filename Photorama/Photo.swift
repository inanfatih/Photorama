//
//  Photo.swift
//  Photorama
//
//  Created by Fatih inan on 2018-03-12.
//  Copyright © 2018 Fatih inan. All rights reserved.
//

import Foundation

class Photo: Equatable {
    static func == (lhs: Photo, rhs: Photo) -> Bool {
        return lhs.photoID == rhs.photoID
    }
    
    let title: String
    let remoteURL: URL
    let photoID: String
    let dateTaken: Date
    
    init( title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.dateTaken = dateTaken
    }
    
    
}


