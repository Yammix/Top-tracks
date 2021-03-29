//
//  TrackData.swift
//  Top tracks
//
//  Created by Yammix on 3/29/21.
//

import Foundation

struct TrackData :Codable{
    let tracks : Tracks
}

struct Tracks :Codable{
    let track  : [Details]
}

struct Details :Codable{
    let name :String
    let url :URL
    let artist:String
}
