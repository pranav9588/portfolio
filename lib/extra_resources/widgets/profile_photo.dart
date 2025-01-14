import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {

  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/tmp.jpg",
      width: 600,
      height: 600,
    );
  }
}
