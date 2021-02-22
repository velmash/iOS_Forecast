import UIKit

struct CurrentWeather: Codable {
    let dt: Int
    
    struct Weather: Codable {
        let id: Int
        let main: String
        let description: String
        let icon: String
    }
    
    let weather: [Weather]
    
    struct Main: Codable {
        let temp: Double
        let temp_min: Double
        let temp_max: Double
    }
    
    let main: Main
}

func fetchCurrentWeather(cityName: String) {
    let urlStr = "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=7fec3ee0ee44eae5296c1efbde974ad3&units=metric&lang=kr"
    
    guard let url = URL(string: urlStr) else {
        fatalError("URL 생성 실패")
    }
    
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        if let error = error {
            fatalError("error")
            return
        }
        
        guard let httpResponse = response as? HTTPURLResponse else {
            fatalError("invalid response")
        }
        
        guard httpResponse.statusCode == 200 else {
            fatalError("failed code \(httpResponse.statusCode)")
        }
        
        guard let data = data else {
            fatalError("empty data")
        }
        
        do {
            let decoder = JSONDecoder()
            let weather = try decoder.decode(CurrentWeather.self, from: data)
            
            print(weather.weather.first?.description)
            print(weather.main.temp)
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    task.resume()
}

fetchCurrentWeather(cityName: "seoul")
