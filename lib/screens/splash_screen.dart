

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return GetBuilder<SplashScreenController>(
     init: SplashScreenController(),
     builder: (model){
       return Scaffold(
         body: Center(
           child:  Container(
             width: 150,
             height: 100,

           ),
         )
       );
     },
   );
  }
}
