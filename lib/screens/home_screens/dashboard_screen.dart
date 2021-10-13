import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrift_pay/screens/home_screens/components/create_wallet_modal.dart';
import 'package:thrift_pay/screens/home_screens/components/fund_wallet_modal.dart';
import 'package:thrift_pay/screens/home_screens/kyc_screen.dart';
import 'package:thrift_pay/theme/colors.dart';
import 'package:thrift_pay/theme/texts.dart';
import 'package:thrift_pay/utils/margin.dart';
import 'package:thrift_pay/utils/navigators.dart';

import 'components/withdrawal_modal.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const YMargin(30),
              Row(
                children: [
                  Text(
                    "ThriftPay",
                    style: w800Style(18, colors.primaryColor),
                  ),
                  const Spacer(),
                  // Container(
                  //   height: 40,
                  //   width: 40,
                  //   decoration: BoxDecoration(
                  //     color: const Color(0xffF2F2F2),
                  //     borderRadius: BorderRadius.circular(5),
                  //   ),
                  //   child: Center(
                  //     child: Icon(
                  //       Icons.notifications_outlined,
                  //       color: colors.primaryColor,
                  //     ),
                  //   ),
                  // ),
                  const XMargin(10),
                  GestureDetector(
                    onTap: () {
                      AppNavigators.route(context, const KYCScreen());
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: FlutterLogo(),
                      ),
                    ),
                  ),
                ],
              ),
              const YMargin(30),
              Text(
                "Virtual wallet balance",
                style: w500Style(14, colors.darkBluePrimary),
              ),
              const YMargin(10),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xffE9EBFB),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "₦ ",
                        style: w500Style(14, colors.primaryColor),
                        children: [
                          TextSpan(
                            text: "30,000.00 ",
                            style: w700Style(24, colors.primaryColor),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: colors.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const YMargin(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(const FundWalletModal());
                    },
                    child: arrowWidget(
                        const Color(0xffE9EBFB), colors.primaryColor, 180 / 360, "Fund wallet"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(const WithdrawalModal());
                    },
                    child: arrowWidget(
                        const Color(0xffFCE8E8), const Color(0xffD91B1B), 360 / 360, "Withdraw"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(const CreateWalletModal());
                    },
                    child: arrowWidget(
                        const Color(0xffE7FDEA), const Color(0xff0EBC20), 230 / 360, "Transfer"),
                  ),
                ],
              ),
              const YMargin(30),
              Text(
                "Recent transactions",
                style: w600Style(18, colors.darkBluePrimary),
              ),
              const YMargin(20),
              ...List.generate(
                2,
                (index) => Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index.isEven ? const Color(0xffF2F2F2) : const Color(0xffFCE8E8),
                        ),
                        child: const Center(
                          child: FlutterLogo(),
                        ),
                      ),
                      const XMargin(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Funded your wallet",
                            style: w600Style(15, colors.primaryColor),
                          ),
                          Text(
                            "20th October, 2021",
                            style: w400Style(
                              13,
                              const Color(0xff595959),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        "₦ 2000.00",
                        style: w600Style(15, colors.primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    AppNavigators.route(context, const KYCScreen());
                  },
                  style: TextButton.styleFrom(
                    primary: const Color(0xffE9EBFB),
                    backgroundColor: const Color(0xffE9EBFB),
                  ),
                  child: Text.rich(TextSpan(
                      text: "Finish your KYC, ",
                      style: w400Style(14, const Color(0xffA59E9E)),
                      children: [
                        TextSpan(
                          text: "Click here ",
                          style: w600Style(14, colors.primaryColor),
                        ),
                      ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget arrowWidget(Color bckColor, Color arrowColor, double rotation, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: bckColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(rotation ?? 50 / 360),
            child: Icon(
              Icons.arrow_downward,
              color: arrowColor,
            ),
          ),
        ),
        const YMargin(10),
        Text(
          title,
          style: w400Style(14, colors.darkBluePrimary),
        ),
      ],
    );
  }
}
