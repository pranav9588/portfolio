import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/extra_resources/widgets/common_text_widget.dart';

class SkillsCarousel extends StatelessWidget {
  final List<String> toolLogos = [
    'assets/logo/android.png',
    'assets/logo/cybrid.png',
    'assets/logo/dart.png',
    'assets/logo/firebase.png',
    'assets/logo/firestore.png',
    'assets/logo/flutter.png',
    'assets/logo/GA.png',
    'assets/logo/git.png',
    'assets/logo/graphql.png',
    'assets/logo/hotjar.png',
    'assets/logo/intercom.png',
    'assets/logo/kotlin.png',
    'assets/logo/swift.png',
  ];

  SkillsCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CommonTextWidget(
          text: "Tools I Have Worked With",
            fontSize: 20, fontWeight: FontWeight.bold
        ),
        const SizedBox(height: 16),
        Container(
          color: ColorManager.grey.withOpacity(0.2),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 100,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              enlargeCenterPage: true,
              viewportFraction: 0.3,
              enableInfiniteScroll: true,
            ),
            items: toolLogos.map((logo) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(
                      logo,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: const Text("Skills Carousel")),
    body: Center(
      child: SkillsCarousel(),
    ),
  ),
));
