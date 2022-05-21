import 'package:flutter/material.dart';
import 'package:weather/data/my_location.dart';
import 'package:weather/data/network.dart';
import 'package:weather/screens/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double? latitude3;
  double? longtitude3;
  var json;
  var APD;
  String API = '79a171ee31424f9664c2a8f5d39cbb0e';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();

  }

  void getLocation() async {
    MyLocation ML = MyLocation();
    await ML.getMyCurrentLocation();
    latitude3 = ML.latitude2;
    longtitude3 = ML.longtitue2;
    NetWork NW = NetWork(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude3&lon=$longtitude3&appid=$API&units=metric');
    json = await NW.getdata();
    NetWork AP = NetWork(
        'http://api.openweathermap.org/data/2.5/air_pollution?lat=$latitude3&lon=$longtitude3&appid=$API');
    APD = await AP.getdata();


    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Weather(weatherdata: json,airdata: APD,);
    }));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
