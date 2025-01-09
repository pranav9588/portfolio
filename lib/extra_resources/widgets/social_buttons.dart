// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/app/constants.dart';
import 'package:my_portfolio_web/extra_resources/widgets/common_text_widget.dart';

class SocialButtons extends StatelessWidget {
  final String img;
  final String title;
  final double? width;
  final double? height;
  final Function function;
  const SocialButtons({super.key, required this.img, required this.title, this.width, this.height, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SizedBox(
              width: width ?? 45,
              height: height ?? 45,
              child: Image(
                image: Svg(img),
              ),
            ),
            SizedBox(width: 20,),
            // CommonTextWidget(text: title, fontSize: 18,)
          ],
        ),
      ),
    );
  }
}

class SocialCluster extends StatelessWidget {
  const SocialCluster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.black.withOpacity(.9),
      child: Row(
        children: [
          SocialButtons(
            function: (){},
            title: "Medium",
            img: Constants.mediumPng,
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 20,
          ),
          SocialButtons(
            function: (){},
            title: "LinkedIn",
            img: Constants.linkedinPng,
          ),
          SizedBox(
            height: 20,
          ),
          SocialButtons(
            function: (){},
            title: "X",
            img: Constants.xPng,
          ),
          SizedBox(
            height: 20,
          ),
          SocialButtons(
            function: (){},
            width: 40,
            height: 40,
            title: "Git",
            img: Constants.githubSvg,
          ),
        ],
      ),
    );
  }
}
