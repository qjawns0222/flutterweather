import 'package:http/http.dart';
import 'dart:convert';

class NetWork {
  final String url;

  NetWork(this.url);

  Future<dynamic> getdata() async {
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      String jsonData = response.body;
      var myJson = jsonDecode(jsonData);
      return myJson;
    }
  }
}
