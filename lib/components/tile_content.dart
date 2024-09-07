import 'package:flutter/material.dart';
import '../constants/constant.dart';

class TileContent extends StatelessWidget {
  final IconData iconData;
  final String label;

  const TileContent({
    required this.iconData,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 60.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
