import 'package:flutter/material.dart';
import 'package:kabar/presentation/ui/utility/app_color.dart';

import '../presentation/ui/screen/splash_screen.dart';

class Kabar extends StatelessWidget {
  const Kabar({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: AppColor.primaryColor,
      ),
    );
  }
}
