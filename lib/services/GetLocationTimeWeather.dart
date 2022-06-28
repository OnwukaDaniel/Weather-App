import 'package:geocoding/geocoding.dart';
import 'package:learnx/services/APIs.dart';

class GetLocationTimeWeather {

  var apis = APIs();
  DateTime time = DateTime.now();
  bool isNight = false;
  String? weatherIconUrl;
  Map<String, dynamic>? locationMap;
  Map<dynamic, dynamic>? weatherData;

  Future<void> getLocationTimeWeather() async {
    /* @link{}
    * Get location from geolocation API.
    * Get time data from that location.
    * Get Weather data from that location also.
    * */
    try {
      var pos = await apis.locationApi();
      List<Placemark> placemark =
          await placemarkFromCoordinates(pos.latitude, pos.longitude);
      locationMap = placemark[0].toJson();

      await apis.timeApi(pos.latitude, pos.longitude);
      time = apis.time!;
      isNight = apis.isNight!;

      weatherData = await apis.getWeather(pos.latitude, pos.longitude);
      weatherIconUrl = apis.weatherIconUrl;
    } catch (e) {
      print("Loading Error---------------- $e");
    }
  }
}
