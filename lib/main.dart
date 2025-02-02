import 'package:flutter/material.dart';
import 'package:whataspp_clone_ui/Responsive/responsive_layout.dart';
import 'package:whataspp_clone_ui/colors.dart';
import 'package:whataspp_clone_ui/screens/mobile_screen_layout.dart';
import 'package:whataspp_clone_ui/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayout(
        mobileScreenLayout: MobileScreen(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
