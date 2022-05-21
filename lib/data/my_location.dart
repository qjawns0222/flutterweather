import 'package:geolocator/geolocator.dart';

class MyLocation {
  double? latitude2;
  double? longtitue2;

  Future<void> getMyCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude2=position.latitude;
      longtitue2=position.longitude;
    } catch (e) {
      print("위치 정보 가져오느데 실패했습니다");
    }
  }
}
