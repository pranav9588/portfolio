import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {

  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/tmp.jpg",
          width: 500,
          height: 500,
        ),
      ],
    );
  }
}
