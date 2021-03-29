//
//  TrackManager.swift
//  Top tracks
//
//  Created by Yammix on 3/29/21.
//

import Foundation

class TrackManager {
    
    func fetchChart() {
        
        if let url = URL(string: "https://ws.audioscrobbler.com/2.0/?method=chart.gettoptracks&api_key=467197fc592a87bfc2c77a5bed351f25&format=json") {
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        
                        do{
                         let results = try decoder.decode(TrackData.self, from: safeData)
                            let resultData = results.tracks.track[0].artist
                        }catch{
                            print(error)
                        }
                    }
                    
                }
            }
        }
    }
    
}
