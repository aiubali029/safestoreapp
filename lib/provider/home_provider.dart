import 'package:flutter/cupertino.dart';
import 'package:my_project/api_service/api_service.dart';
import 'package:my_project/model/home_model.dart';

class HomeProvider extends ChangeNotifier{
  HomeModel? homeModel;
 Future<HomeModel> getHome(){
   return homeModel = APIService.getHomeData();
  //  notifyListeners();
  }
}