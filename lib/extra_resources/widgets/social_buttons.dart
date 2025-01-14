import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/app/constants.dart';
import 'package:my_portfolio_web/app/utils.dart';

class SocialButtons extends StatelessWidget {
  final String img;
  final double? width;
  final double? height;
  final VoidCallback function;

  const SocialButtons({
    super.key,
    required this.img,
    this.width,
    this.height,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            SizedBox(
              width: width ?? 40,
              height: height ?? 40,
              child: Image(image: Svg(img)),
            ),
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
      color: ColorManager.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildSocialButtons(spaced: true),
      ),
    );
  }

  List<Widget> _buildSocialButtons({bool spaced = false}) {
    return [
      Padding(
        padding: const EdgeInsets.only(bottom: .0),
        child: SocialButtons(
          function: () => Utils.launch(Constants.mediumProfileLink),
          img: Constants.mediumPng,
          width: 48,
          height: 48,
        ),
      ),
      if (spaced) const SizedBox(height: 16) else const SizedBox(width: 16),
      Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: SocialButtons(
          width: 35,
          height: 35,
          function: () => Utils.launch(Constants.linkedinProfileLink),
          img: Constants.linkedinPng,
        ),
      ),
      if (spaced) const SizedBox(height: 16) else const SizedBox(width: 16),
      Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: SocialButtons(
          width: 35,
          height: 35,
          function: () => Utils.launch(Constants.emailSvg),
          img: Constants.emailSvg,
        ),
      ),
      if (spaced) const SizedBox(height: 16) else const SizedBox(width: 16),
      Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: SocialButtons(
          width: 35,
          height: 35,
          function: () => Utils.launch(Constants.xProfileLink),
          img: Constants.xPng,
        ),
      ),
      if (spaced) const SizedBox(height: 16) else const SizedBox(width: 16),
      SocialButtons(
        function: () => Utils.launch(Constants.githubProfileLink),
        img: Constants.githubSvg,
      ),
    ];
  }
}
