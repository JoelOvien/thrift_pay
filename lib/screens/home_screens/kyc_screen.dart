import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrift_pay/screens/auth_screens/sign_in_screen.dart';
import 'package:thrift_pay/theme/colors.dart';
import 'package:thrift_pay/theme/texts.dart';
import 'package:thrift_pay/utils/margin.dart';
import 'package:thrift_pay/utils/navigators.dart';
import 'package:expandable/expandable.dart';
import 'package:thrift_pay/widgets/button_widgets.dart';

class KYCScreen extends StatefulWidget {
  const KYCScreen({Key key}) : super(key: key);

  @override
  _KYCScreenState createState() => _KYCScreenState();
}

class _KYCScreenState extends State<KYCScreen> {
  TextEditingController dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.whiteColor,
        leading: TextButton(
          onPressed: () {
            AppNavigators.pop(context);
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: Color(0xffA59E9E),
                size: 13,
              ),
              Text(
                "Back",
                style: w400Style(14, const Color(0xffA59E9E)),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: TextButton(
              onPressed: () {
                AppNavigators.routeReplace(context, const SignInScreen());
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffFCE8E8),
              ),
              child: Text(
                "Logout",
                style: w400Style(14, const Color(0xffD91B1B)),
              ),
            ),
          ),
          const XMargin(15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 15),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 92,
                  width: 92,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: FlutterLogo(),
                  ),
                ),
                const YMargin(15),
                Text(
                  "Amanda Elesi",
                  style: w600Style(20, colors.darkBluePrimary),
                ),
                const YMargin(5),
                Text(
                  "Tier 1 wallet",
                  style: w400Style(14, const Color(0xff595959)),
                ),
                const YMargin(20),
                tiers("Tier 1 KYC"),
                const YMargin(20),
                tiers("Tier 2 KYC"),
                const YMargin(20),
                tiers("Tier 3 KYC"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget tiers(String tier) {
    return ExpandableNotifier(
      child: Column(
        children: [
          Expandable(
            collapsed: ExpandableButton(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color(0xffE9EBFB),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Text(
                        tier,
                        style: w600Style(14, colors.darkBluePrimary),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xff595959),
                      ),
                    ],
                  )),
            ),
            expanded: Container(
              padding: const EdgeInsets.all(10),
              // height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xffE9EBFB),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  ExpandableButton(
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 50,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: const Color(0xffE9EBFB),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Text(
                              tier,
                              style: w600Style(14, colors.darkBluePrimary),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.keyboard_arrow_up_rounded,
                              color: Color(0xff595959),
                            ),
                          ],
                        )),
                  ),
                  Builder(builder: (context) {
                    if (tier.contains("1")) {
                      return Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Get.bottomSheet(
                                Container(
                                  padding: const EdgeInsets.all(18),
                                  decoration: BoxDecoration(
                                    color: colors.whiteColor,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  height: screenHeight(context, percent: 0.4),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const YMargin(10),
                                      Text(
                                        "Update info",
                                        style: w600Style(
                                          18,
                                          const Color(0xff0C1141),
                                        ),
                                      ),
                                      const YMargin(20),
                                      authField(dobController, false, "What is your DOB",
                                          prefix: const Icon(Icons.calendar_today_rounded)),
                                      const YMargin(30),
                                      SizedBox(
                                        height: 50,
                                        width: double.maxFinite,
                                        child: ElevatedButtonWidget(
                                          color: colors.primaryColor,
                                          labelColor: colors.whiteColor,
                                          label: "Update",
                                          radius: 5,
                                          onP: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            title: Text(
                              "Birthday",
                              style: w500Style(14, const Color(0xff595959)),
                            ),
                            trailing: Text(
                              "Add",
                              style: w400Style(14, colors.primaryColor),
                            ),
                          ),
                          ListTile(
                            title: TextField(
                              decoration: InputDecoration(
                                hintText: "FullName",
                                hintStyle: w500Style(14, const Color(0xff595959)),
                                border: InputBorder.none,
                              ),
                            ),
                            trailing: Text(
                              "Add",
                              style: w400Style(14, colors.primaryColor),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Container();
                    }
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
