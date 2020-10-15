import 'package:swflite/utils/network_utils.dart';

class RestData{

  NetworkUtil _netUtil = NetworkUtil();
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL+"/";

  Future<User> login(String username, String password){
    return null;
  }
}