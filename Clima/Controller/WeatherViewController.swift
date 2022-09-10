//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TextField has to tell to the ViewController what is happening
        searchTextField.delegate = self
    }


    @IBAction func searchPressed(_ sender: UIButton) {
        // Dismisses the keyboard
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }
    
    // Handle when the user presses the return button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Dismisses the keyboard
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    
    // When the search button or the return button is pressed
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }
    
    // Delete the text in the textField when the user finished editing
    func textFieldDidEndEditing(_ textField: UITextField) {
        // Use searchTextField.text to get the weather for that city
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
        // Emptying the textField
        searchTextField.text = ""
        // Reset the placeholder of the textField
        textField.placeholder = "Search"
    }
}

