import UIKit

// observer
protocol WeatherObserver: class {
    func update(_ temperature: Float, _ humidity: Float, _ pressure: Float)
}

// subject
protocol WeatherSubject {
    func registerObserver(_ observer: WeatherObserver)
    func removeObserver(_ observer: WeatherObserver)
    func notifyObservers()  // when subject changed notify all
}

protocol DisplayElement {
    func display()
}

// 以天气系统做一个天气预报布告板
final class WeatherData {
    private var observerArray = [WeatherObserver]()
    var temperature: Float { getTemperature() }
    var humidity: Float = 0
    var pressure: Float = 0
    
    required init() {
        
    }
    
    func getTemperature() -> Float {
        return Float.random(in: 0...40)
    }
    
    func getHumidity() -> Float {
        return Float.random(in: 0...80)
    }
    
    func getPressure() -> Float {
        return Float.random(in: 0...100)
    }
    
    func measurementsChanged() {
        notifyObservers()
    }
}

extension WeatherData: WeatherSubject {
    func registerObserver(_ observer: WeatherObserver) {
        if observerArray.contains(where: { $0 === observer }) == false {
            observerArray.append(observer);
        }
    }
    
    func removeObserver(_ observer: WeatherObserver) {
//        if let index = observerArray.firstIndex(where: { $0 === observer }) {
//            observerArray.remove(at: index)
//        }
        observerArray.removeAll(where: { $0 === observer })
    }
    
    func notifyObservers() {
        observerArray.forEach({
            $0.update(temperature, humidity, pressure)
        })
    }
}

class WeatherForecast: WeatherObserver {
    required init() {
        
    }
    
    func update(_ temperature: Float, _ humidity: Float, _ pressure: Float) {
        print("Current Temp: \(temperature), Humidity: \(humidity), Pressure: \(pressure)")
    }
}

let weatherDataCenter = WeatherData()

let forecast = WeatherForecast()

weatherDataCenter.registerObserver(forecast)

weatherDataCenter.measurementsChanged()
