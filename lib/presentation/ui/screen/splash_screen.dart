import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kabar/presentation/ui/screen/home_screen.dart';
import 'package:kabar/presentation/ui/utility/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // @override
  // void initState(){
  //   super.initState();
  //   gotoNextScreen();
  // }
  //
  // Future<void> gotoNextScreen()async {
  //   Future.delayed(const Duration(seconds: 3)).then(
  //       (value){
  //         Get.offAll(const HomeScreen());
  //       }
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImageAssets.logo, width: 200,),
          ],
        ),
      ),
    );
  }
}
