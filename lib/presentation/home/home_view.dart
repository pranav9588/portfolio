import 'package:flutter/material.dart';
import 'package:june/june.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/app/constants.dart';
import 'package:my_portfolio_web/app/june_states.dart';
import 'package:my_portfolio_web/extra_resources/widgets/top_title_buttons.dart';
import 'package:my_portfolio_web/presentation/profile/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  void getDimensions() {
    var phoneDimens = June.getState(() => PhoneDimensions());
    phoneDimens.mobileHeight = MediaQuery.of(context).size.height;
    phoneDimens.mobileWidth = MediaQuery.of(context).size.width;
    phoneDimens.setState();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((callback) {
      getDimensions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => PhoneDimensions(),
      builder: (phoneDimensions) => Scaffold(
        backgroundColor: ColorManager.black,
        appBar: (phoneDimensions.mobileWidth >= Constants.maxMobileWidth)
            ? AppBar(
                backgroundColor: ColorManager.black,
                title: const Padding(
                  padding: EdgeInsets.only(top: 20.0, right: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// add your logo here.
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TopTitleButtons(
                            text: "About",
                            height: 50,
                            width: 90,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                          TopTitleButtons(
                            text: "Experience",
                            height: 50,
                            width: 140,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                          TopTitleButtons(
                            text: "Projects",
                            height: 50,
                            width: 110,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                          TopTitleButtons(
                            text: "Resume",
                            height: 50,
                            width: 110,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                          TopTitleButtons(
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
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : null,
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ///add views as widgets in here
            SizedBox(
              height: 30,
            ),
            ProfileView(),
          ],
        ),
      ),
    );
  }
}
