//
//  WeatherManager.swift
//  Clima
//
//  Created by Adrien CHABAUD on 2022-09-09.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=374848976ad46d62e75bb226936f5120&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        // 1. Create URL
        if let url = URL(string: urlString) {
            // 2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            // 3. Give the session a task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!)
                    // Exit the function
                    return
                }
                
                if let safeData = data {
                    // Make the result readable
                    
                }
            }
            
            // 4. Start the task
            task.resume()
        }
    }
}
