import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String? message;
  const StyledText(this.message, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$message',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: 'coors',
        ),
      ),
    );
  }
}
