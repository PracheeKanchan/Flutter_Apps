import 'package:shared_preferences/shared_preferences.dart';

class SessionData {

      static bool? isLogin;

      static Future<void> storeSessionData({required bool loginData}) async {
      
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      // SET DATA
      sharedPreferences.setBool("loginSession", loginData);
      // GET DATA
      //getSessionData();
    }

      static Future<void> getSessionData() async {

      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

      isLogin = sharedPreferences.getBool("loginSession") ?? false;
     
    }
}