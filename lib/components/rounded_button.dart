import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData? iconData;
  final VoidCallback? onPress;

  const RoundedButton({super.key, this.onPress, this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xFF4b4584)),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
