// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_portfolio_web/extra_resources/widgets/common_text_widget.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

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

  Widget forDesktop(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonTextWidget(text: "About Me", fontSize: 38, fontWeight: FontWeight.w900,),
            ],
          ),
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }


  Widget forMobile(){
    return Container();
  }
}
