import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrift_pay/theme/colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onP;
  final int loading;
  final Color color;
  final Color labelColor;
  final double radius;
  const ElevatedButtonWidget({
    Key key,
    @required this.color,
    @required this.labelColor,
    this.label,
    this.onP,
    this.loading,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 10),
        ),
        primary: colors.primaryColor,
      ),
      onPressed: onP,
      child: loading == 1
          ? const Center(
              child: SizedBox(
                height: 15,
                width: 15,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            )
          : Text(
              label,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: labelColor,
              ),
            ),
    );
  }
}
