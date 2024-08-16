import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset('assets/images.logo.svg'),
            const Spacer(),
            InkWell(
              onTap: (){},
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    )
                  ]
                ),
                child: const Icon(Icons.notifications_none_rounded, size: 26,),
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Trending', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
                Text('See all', style: TextStyle(
                  fontSize: 16
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
