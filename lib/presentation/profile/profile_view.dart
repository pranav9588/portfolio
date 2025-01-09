// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/app/constants.dart';
import 'package:my_portfolio_web/extra_resources/widgets/common_text_widget.dart';
import 'package:my_portfolio_web/extra_resources/widgets/social_buttons.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextWidget(
                    text: "Hi I'm,",
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  CommonTextWidget(
                    text: "Pranav Patel",
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                  CommonTextWidget(
                    text: "Mobile Application Developer",
                    fontWeight: FontWeight.w900,
                    fontSize: 26,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          SocialCluster(),
        ],
      ),
    );
  }
}
