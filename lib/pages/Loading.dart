import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:learnx/services/GetLocationTimeWeather.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<void> getData() async {
    var locationService = await Geolocator.isLocationServiceEnabled();
    if (locationService == false) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LocationMsg();
      }));
    }
    var gtw = GetLocationTimeWeather();
    await gtw.getLocationTimeWeather();

    Navigator.pushReplacementNamed(context, '/TimePage', arguments: {
      'time': gtw.time,
      'isNight': gtw.isNight,
      'weatherIconUrl': gtw.weatherIconUrl,
      'locationMap': gtw.locationMap,
      'weatherData': gtw.weatherData
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();

    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.blue,
          size: 50,
        ),
      ),
    );
  }
}

class LocationMsg extends StatelessWidget {
  const LocationMsg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 33),
          height: 200,
          width: 450,
          child: Dialog(
            backgroundColor: Colors.blue,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 33),
              child: Center(
                  child: Column(
                children: [
                  Text(
                    'App requires Location permission to display weather data!',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Text("Deny",
                            style: TextStyle(color: Colors.white, fontSize: 18.0)
                        ),
                        onTap: () {Navigator.pop(context);},
                      ),
                      Divider(height: 2.0),
                      InkWell(
                        child: Text("Accept",
                            style: TextStyle(color: Colors.white, fontSize: 18.0)
                        ),
                        onTap: () {
                          Geolocator.requestPermission();
                        },
                      ),
                    ],
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
