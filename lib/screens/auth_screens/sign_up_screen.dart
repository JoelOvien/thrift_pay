import 'package:flutter/material.dart';
import 'package:thrift_pay/screens/auth_screens/additional_info.dart';
import 'package:thrift_pay/screens/auth_screens/sign_in_screen.dart';
import 'package:thrift_pay/theme/colors.dart';
import 'package:thrift_pay/theme/texts.dart';
import 'package:thrift_pay/utils/margin.dart';
import 'package:thrift_pay/utils/navigators.dart';
import 'package:thrift_pay/widgets/button_widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController bvnController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
                  "Create an account",
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
                const YMargin(40),
                authField(nameController, false, "What is your name?"),
                const YMargin(20),
                authField(emailController, true, "Enter your email address"),
                const YMargin(20),
                authField(numberController, true, "Enter your phone number"),
                const YMargin(20),
                authField(bvnController, true, "Enter your BVN"),
                const YMargin(40),
                SizedBox(
                  height: 50,
                  width: double.maxFinite,
                  child: ElevatedButtonWidget(
                    color: colors.primaryColor,
                    labelColor: colors.whiteColor,
                    label: "Proceed",
                    radius: 5,
                    onP: () {
                      AppNavigators.route(context, const AdditionalInfoScreen());
                    },
                  ),
                ),
                const YMargin(10),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      AppNavigators.routeReplace(context, const SignInScreen());
                    },
                    child: Text.rich(TextSpan(
                        text: "Already have an account? ",
                        style: w400Style(14, const Color(0xffA59E9E)),
                        children: [
                          TextSpan(
                            text: "Sign In ",
                            style: w600Style(14, colors.primaryColor),
                          ),
                        ])),
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
