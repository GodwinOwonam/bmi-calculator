import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    required this.onTap,
    required this.icon,
    super.key,
  });

  final void Function() onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      constraints: const BoxConstraints(
        maxWidth: 45.0,
        maxHeight: 45.0,
        minHeight: 45.0,
        minWidth: 45.0,
      ),
      elevation: 6.0,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
