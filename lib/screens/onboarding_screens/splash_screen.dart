import 'package:flutter/material.dart';
import 'package:thrift_pay/screens/auth_screens/sign_in_screen.dart';
import 'package:thrift_pay/theme/colors.dart';
import 'package:thrift_pay/theme/texts.dart';
import 'package:thrift_pay/utils/navigators.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      AppNavigators.routeReplace(context, const SignInScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      body: Center(
        child: Text(
          "ThriftPay",
          style: w800Style(18, Colors.white),
        ),
      ),
    );
  }
}
