import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kabar/presentation/ui/screen/main_bottom_nav_screen.dart';
import 'package:kabar/presentation/ui/utility/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    _gotoNextScreen();
  }

  Future<void> _gotoNextScreen()async {
    await Future.delayed(const Duration(seconds: 2));
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MainBottomNavScreen()));
  }

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
