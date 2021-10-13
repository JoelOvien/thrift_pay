import 'dart:async';


import 'package:get/get.dart';
import 'package:thrift_pay/service/auth_service.dart';
import 'package:thrift_pay/service/dNavigationService.dart';
import 'package:thrift_pay/service/storage_service.dart';

class SplashScreenController extends GetxController {
 // StorageService storageService = locator<StorageService>();
 // DNavigationService _navigationService = locator<DNavigationService>();

 // AuthService _authService = locator<AuthService>();
 // StreamSubscription<UserData> _streamSubscription;


  bool completeProfile;

  @override
  void onInit() {
    super.onInit();
   // fetchLocalProfile();
   // fetchData();

    // fetchProfile();
  }

  @override
  void onClose() {
  //  _streamSubscription?.cancel();
    super.onClose();
  }

  //
  // void fetchData() async {
  //
  //   bool isFirstTime = await storageService.firstTime();
  //   if (isFirstTime) {
  //     await storageService.setFirstTime();
  //     await _navigationService.offAndToNamed(
  //       name: RouteName.on_boarding,
  //     );
  //     return;
  //   }
  //
  //   bool isLoggedIn = _authService.isLoggedIn();
  //
  //   if (isLoggedIn) {
  //
  //
  //     if (completeProfile == null) {
  //       await fetchLocalProfile();
  //     }
  //
  //     if (!completeProfile) {
  //       //incomplete profile, continue on-boarding
  //
  //       // await _navigationService.offAndToNamed(
  //       //   name: RouteName.profile_on_boarding,
  //       // );
  //
  //       return;
  //     }
  //
  //     // profile is completed go to homepage
  //     // await _navigationService.offAndToNamed(
  //     //   name: RouteName.user_dashboard,
  //     // );
  //
  //     return;
  //   }
  //
  //   // await _navigationService.offAndToNamed(
  //   //   name: RouteName.login,
  //   // );
  // }
  //
  // Future<void> fetchLocalProfile() async {
  //   completeProfile = await storageService.isProfileCompleted() ?? false;
  //   return;
  // }
}
