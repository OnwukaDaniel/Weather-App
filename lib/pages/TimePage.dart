import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePage extends StatefulWidget {
  const TimePage({Key? key}) : super(key: key);

  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  Map data = {};
  Map locationMap = {};
  Map weatherData = {};
  String time = "Error occurred";
  String? weatherIconUrl;
  String? country;
  String? region;
  String? town;
  String? weatherCon;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    time = DateFormat.jm().format((data['time']));
    bool isNight = data['isNight'];
    weatherIconUrl = data['weatherIconUrl'];
    locationMap = data['locationMap'];
    weatherData = data['weatherData'];
    country = locationMap['country'];
    region = locationMap['subAdministrativeArea'];
    town = weatherData['name'];
    weatherCon = weatherData['weather'][0]['main'];

    Color? textColor = isNight == true ? Colors.white : Colors.black;
    Color? backgroundColor =
        isNight == true ? Colors.blue[900] : Colors.blue[700];
    String path = isNight == false ? 'assets/day.jpg' : 'assets/night.jpg';

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(path), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: NetworkImage(weatherIconUrl!)),
            Text(weatherCon!, style: TextStyle(fontSize: 17.0, color: textColor)),
            SizedBox(height: 10),
            Text(country!, style: TextStyle(fontSize: 28.0, color: textColor)),
            Text(region!, style: TextStyle(fontSize: 17.0, color: textColor)),
            Text(town!, style: TextStyle(fontSize: 17.0, color: textColor)),
            SizedBox(height: 10),
            Text(time, style: TextStyle(fontSize: 70.0, color: textColor)),
          ],
        ),
      ),
    );
  }
}
