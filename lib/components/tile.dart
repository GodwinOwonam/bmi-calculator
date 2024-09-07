import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final Color color;
  final Widget? child;
  final void Function()? onPress;

  const Tile({
    required this.color,
    this.child,
    this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}
