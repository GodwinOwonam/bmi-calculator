import 'package:flutter/material.dart';
import '../constants/constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.title,
    this.onTap,
    super.key,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20.0),
        color: kBottomSheetColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomSheetHeight,
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
