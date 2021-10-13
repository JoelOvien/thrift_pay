import 'package:flutter/material.dart';
import 'package:thrift_pay/screens/auth_screens/sign_in_screen.dart';
import 'package:thrift_pay/theme/colors.dart';
import 'package:thrift_pay/theme/texts.dart';
import 'package:thrift_pay/utils/margin.dart';

class FundWalletModal extends StatelessWidget {
  const FundWalletModal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: colors.whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: screenHeight(context, percent: 0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const YMargin(10),
          Row(
            children: [
              Text(
                "Fund wallet",
                style: w600Style(
                  18,
                  const Color(0xff0C1141),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Wallet 1",
                    style: w400Style(
                      12,
                      colors.primaryColor,
                    ),
                  ),
                  const XMargin(5),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xff0C1141),
                  ),
                ],
              )
            ],
          ),
          const YMargin(20),
          authField(null, false, "Virtual bank name is here"),
          const YMargin(20),
          authField(null, false, "Virtual account name is here"),
          const YMargin(20),
          authField(
            null,
            false,
            "Virtual account number is here",
            prefix: Icon(
              Icons.copy,
              color: colors.primaryColor,
            ),
          ),
          const YMargin(30),
        ],
      ),
    );
  }
}
