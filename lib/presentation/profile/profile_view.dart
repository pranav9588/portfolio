// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:my_portfolio_web/extra_resources/widgets/common_text_widget.dart';
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
          children: [
            isDesktop ? forDesktop() : forMobile()
          ],
        );
      },
    );
  }


  Widget forDesktop(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*SizedBox(
                    height: 50,
                  ),*/
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
                    fontSize: 26 ,
                  ),
                  SocialCluster()
                ],
              ),
              ProfilePhoto(),
            ],
          ),
        ],
      ),
    );
  }

  Widget forMobile(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/main-logo.png",
          width: 165,
          height: 165,
        ),
        SizedBox(
          height: 10,
        ),
        CommonTextWidget(
          text: "Hi I'm,",
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        CommonTextWidget(
          text: "Pranav Patel",
          fontWeight: FontWeight.w900,
          fontSize: 24,
        ),
        CommonTextWidget(
          text: "Mobile Application Developer",
          fontWeight: FontWeight.w900,
          fontSize: 20,
        ),
        SizedBox(height: 18,),
        ProfilePhoto(),
        SizedBox(height: 18,),
        SocialCluster()
      ],
    );
  }

}
