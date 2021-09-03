

import UIKit

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    // Computed property
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        default:
            return "cloud"
        }
    }
    
    var conditionImage: UIImage? {
        if let image = UIImage(systemName: conditionName) {
            return image
        } else {
            return nil
        }
    }
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
}
