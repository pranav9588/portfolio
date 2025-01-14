import 'package:flutter/material.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/app/constants.dart';
import 'package:my_portfolio_web/extra_resources/widgets/carousel_slider.dart';
import 'package:my_portfolio_web/extra_resources/widgets/top_title_buttons.dart';
import 'package:my_portfolio_web/presentation/profile/profile_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth > Constants.maxMobileWidth;
        return Scaffold(
          backgroundColor: ColorManager.black,
          appBar: AppBar(
            toolbarHeight: isDesktop ? 100 : 30,
            backgroundColor: ColorManager.black,
            title: isDesktop
                ? PreferredSize(
                    preferredSize: const Size.fromHeight(175),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FittedBox(
                          child: Image.asset(
                            "assets/images/main-logo.png",
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const TopTitleButtons(
                              text: "About",
                              height: 50,
                              width: 90,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            const TopTitleButtons(
                              text: "Experience",
                              height: 50,
                              width: 140,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            const TopTitleButtons(
                              text: "Projects",
                              height: 50,
                              width: 110,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            const TopTitleButtons(
                              text: "Resume",
                              height: 50,
                              width: 110,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            const TopTitleButtons(
                              text: "Blogs",
                              height: 50,
                              width: 85,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            TopTitleButtons(
                              text: "Contact",
                              height: 50,
                              width: 100,
                              fontSize: 20,
                              textColor: ColorManager.orange,
                              fontWeight: FontWeight.w800,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : null,
          ),
          drawer: isDesktop
              ? null // Hide the drawer in desktop mode
              : _buildDrawer(context), // Show the drawer in mobile mode
          body: ListView(
            children: [
              const SizedBox(height: 10),
              SkillsCarousel(),
              const ProfileView(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: ColorManager.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Image.asset(
              "assets/images/main-logo.png",
              width: 150,
              height: 150,
            ),
          ),
          const TopTitleButtons(
            text: "About",
            height: 50,
            width: 90,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
          const TopTitleButtons(
            text: "Experience",
            height: 50,
            width: 140,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
          const TopTitleButtons(
            text: "Projects",
            height: 50,
            width: 110,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
          const TopTitleButtons(
            text: "Resume",
            height: 50,
            width: 110,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
          const TopTitleButtons(
            text: "Blogs",
            height: 50,
            width: 85,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
          const TopTitleButtons(
            text: "Contact",
            height: 50,
            width: 100,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ],
      ),
    );
  }
}
