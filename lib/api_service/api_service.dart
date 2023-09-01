import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_project/consts/constants.dart';
import 'package:my_project/model/home_model.dart';
class APIService{
 static var client = http.Client();
  static getHomeData() async{

    String url = '$base_url/home?country_code=bd';

    // try{
      var response = await client.get(
          Uri.parse(url),headers:{'Content-Type': 'application/json'},);
      var data = jsonDecode(response.body);
      print("Home Data $data");
      return HomeModel.fromMap(data["data"]);
    // }
    // catch( e){
    //   print(e);
    // }

  }
}