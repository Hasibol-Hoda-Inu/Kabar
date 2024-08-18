import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kabar/presentation/ui/utility/image_assets.dart';

import '../widgets/news_list_widget.dart';
import '../widgets/section_title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(ImageAssets.logo, width: 100,),
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
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_alt_off_outlined),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(6)
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(6)
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(6)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(6)
                ),
              ),
            ),
            const SizedBox(height: 16,),
            const SectionTitle(),
            const SizedBox(height: 16,),
            const NewsList()
          ],
        ),
      ),
    );
  }
}
