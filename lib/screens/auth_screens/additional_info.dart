import 'package:flutter/material.dart';
import 'package:thrift_pay/screens/auth_screens/sign_in_screen.dart';

import 'package:thrift_pay/screens/home_screens/dashboard_screen.dart';
import 'package:thrift_pay/theme/colors.dart';
import 'package:thrift_pay/theme/texts.dart';
import 'package:thrift_pay/utils/margin.dart';
import 'package:thrift_pay/utils/navigators.dart';
import 'package:thrift_pay/widgets/button_widgets.dart';

class AdditionalInfoScreen extends StatefulWidget {
  const AdditionalInfoScreen({Key key}) : super(key: key);

  @override
  _AdditionalInfoScreenState createState() => _AdditionalInfoScreenState();
}

class _AdditionalInfoScreenState extends State<AdditionalInfoScreen> {
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const YMargin(50),
                Text(
                  "Almost there",
                  style: w700Style(
                    35,
                    const Color(0xff0C1141),
                  ),
                ),
                const YMargin(10),
                Text(
                  "We are glad, you found yourself here,\ncreate an account today.",
                  textAlign: TextAlign.start,
                  style: w500Style(18, const Color(0xff595959)),
                ),
                const YMargin(50),
                authField(passwordController, false, "Enter a password"),
                const YMargin(20),
                authField(confirmPasswordController, true, "Confirm password"),
                const YMargin(50),
                SizedBox(
                  height: 50,
                  width: double.maxFinite,
                  child: ElevatedButtonWidget(
                    color: colors.primaryColor,
                    labelColor: colors.whiteColor,
                    label: "Continue to ThriftPay",
                    radius: 5,
                    onP: () {
                      AppNavigators.routeReplace(context, const DashboardScreen());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
