import 'package:flutter/material.dart';
import 'package:june/core/src/june_main.dart';
import 'package:june/instance/june_instance.dart';
import 'package:my_portfolio_web/app/color_manager.dart';
import 'package:my_portfolio_web/app/june_states.dart';
import 'package:my_portfolio_web/presentation/home/home_view.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // getDimensions();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.black),
          useMaterial3: true,
        ),
        home: const HomeView());
  }
}
