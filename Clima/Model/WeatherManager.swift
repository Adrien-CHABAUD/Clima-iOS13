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
        print(urlString)
    }
}
