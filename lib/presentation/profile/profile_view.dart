// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/app/constants.dart';
import 'package:my_portfolio_web/extra_resources/widgets/common_text_widget.dart';
import 'package:my_portfolio_web/extra_resources/widgets/download_button.dart';
import 'package:my_portfolio_web/extra_resources/widgets/profile_photo.dart';
import 'package:my_portfolio_web/extra_resources/widgets/social_buttons.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth > 500;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [isDesktop ? forDesktop() : forMobile()],
        );
      },
    );
  }

  Widget forDesktop() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 90,
          ),
          CommonTextWidget(
            text: "Hi I'm,",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          )
              .animate()
              .fadeIn(duration: 600.ms)
              .then(delay: 200.ms) // baseline=800ms
              .slide(),
          // SizedBox(height: 12,),
          CommonTextWidget(
            text: "Pranav Patel",
            fontWeight: FontWeight.w800,
            fontSize: 42,
          )
              .animate()
              .fadeIn(duration: 600.ms)
              .then(delay: 500.ms) // baseline=800ms
              .slide(),
          SizedBox(
            height: 12,
          ),
          CommonTextWidget(
            text: "Mobile Application Developer",
            fontWeight: FontWeight.w900,
            fontSize: 38,
            color: ColorManager.orange,
          )
              .animate()
              .fadeIn(duration: 600.ms)
              .then(delay: 800.ms) // baseline=800ms
              .slide(),
          SizedBox(
            height: 38,
          ),
          SocialCluster(),
          SizedBox(
            height: 18,
          ),
          AnimatedDownloadButton(),
          SizedBox(
            height: 45,
          ),
          Center(
            child: Lottie.asset(
              Constants.scrollUpLottie,
              width: 70,
              height: 70,
              fit: BoxFit.contain,
              repeat: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget forMobile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/main-logo.png",
          width: 165,
          height: 165,
        ),
        CommonTextWidget(
          text: "Hi I'm,",
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        CommonTextWidget(
          text: "Pranav Patel",
          fontWeight: FontWeight.w800,
          fontSize: 28,
        ),
        CommonTextWidget(
          text: "Mobile Application Developer",
          fontWeight: FontWeight.w900,
          fontSize: 22,
          color: ColorManager.orange,
        ),
        SizedBox(
          height: 18,
        ),
        ProfilePhoto(),
        SizedBox(
          height: 18,
        ),
        AnimatedDownloadButton(),
        SocialCluster(),
        Center(
          child: Lottie.asset(
            Constants.scrollUpLottie,
            width: 50,
            height: 50,
            fit: BoxFit.contain,
            repeat: true,
          ),
        ),
        SizedBox(height: 22),
      ],
    );
  }
}
