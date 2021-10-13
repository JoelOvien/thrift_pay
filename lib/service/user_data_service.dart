import 'package:thrift_pay/datanodel/user_data.dart';

abstract class UserDataService {
  Future<void> saveUserData({UserData userData}) {}
  Future<void> fetchUserData() {}
}
