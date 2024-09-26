import 'dart:async';
class WeatherData {
  String location;
  double temperature;
  String condition;
  WeatherData(this.location, this.temperature, this.condition);
  @override
  String toString() {
    return 'Weather in $location: $temperature°C, Condition: $condition';
  }
}
class WeatherAPI {
  Future<WeatherData> fetchWeatherData() async {
    print("Fetching weather data...");
    await Future.delayed(Duration(seconds: 3));   
    bool success = true; 
    if (success) {
      return WeatherData('San Francisco', 24.5, 'Sunny');
    } else {
      throw Exception('Failed to fetch weather data.');
    }
  }
}
void main() async {
  WeatherAPI weatherAPI = WeatherAPI();
  try {
    WeatherData data = await weatherAPI.fetchWeatherData();
    print(data);
  } catch (e) {
    print('Error: $e');
  }
}
