import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class APIs {
  String? city;
  String? location;
  DateTime? time;
  String? flag;
  bool? isNight;
  String? weatherIconUrl;

  APIs();

  Future<void> timeApi(double latitude, double longitude) async {
    Response response = await get(Uri.parse(
        "https://www.timeapi.io/api/Time/current/coordinate?latitude=$latitude&longitude=$longitude"));
    Map map = jsonDecode(response.body);
    String dateTime = map["dateTime"];

    int year = map['year'];
    int month = map['month'];
    int day = map['day'].toInt();
    int hour = map['hour'].toInt();
    int minute = map['minute'].toInt();
    int seconds = map['seconds'].toInt();

    time = DateTime.parse(dateTime);
    isNight = hour >= 6 && hour <= 20 ? false : true;
  }

  Future<Position> locationApi() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {

      return Future.error('Location is not enabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Permission Denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error('Permission denied forever');
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<Map> getWeather(double latitude, double longitude) async {

    var key = 'c8849f808a2847ee571b5e9dfdf54ada';
    /*
    * {
    *    coord: {lon: 5.1336, lat: 7.3024},
    *    weather: [{id: 803, main: Clouds, description: broken clouds, icon: 04d}],
    *    base: stations,
    *    main: {temp: 303.68, feels_like: 305.19, temp_min: 303.68, temp_max: 303.68, pressure: 1007, humidity: 51, sea_level: 1007, grnd_level: 964},
    *    visibility: 10000, wind: {speed: 1.19, deg: 109, gust: 2.38},
    *    clouds: {all: 79}, dt: 1637164379,
    *    sys: {country: NG, sunrise: 1637127070, sunset: 1637169480},
    *    timezone: 3600, id: 2337762, name: Ilare, cod: 200
    *  }
    * */

    Response response = await get(Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$key'));
    Map map = jsonDecode(response.body);
    var icon = map['weather'][0]['icon'];
    print('************************** getWeather $map');
    weatherIconUrl = "http://openweathermap.org/img/wn/$icon@2x.png";
    return map;
  }
}
