import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabar/presentation/ui/screen/home_screen.dart';

import '../presentation/ui/screen/splash_screen.dart';

class Kabar extends StatelessWidget {
  const Kabar({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
