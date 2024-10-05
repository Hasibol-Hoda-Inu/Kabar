import 'package:flutter/material.dart';
import 'package:kabar/presentation/ui/screen/category_screens/cybersecurity_news_screen.dart';
import 'package:kabar/presentation/ui/screen/category_screens/programming_news_screen.dart';
import 'package:kabar/presentation/ui/screen/category_screens/tech_news_screen.dart';
import 'package:kabar/presentation/ui/screen/tap_view_category_screens/tap_view_%20programming_news_screen.dart';
import 'package:kabar/presentation/ui/screen/tap_view_category_screens/tap_view_space_news_screen.dart';

import '../screen/tap_view_category_screens/tap_view_crypto_news_screen.dart';
import '../screen/tap_view_category_screens/tap_view_cybersecurity_news_screen.dart';
import '../screen/tap_view_category_screens/tap_view_entrepreneurship_news_screen.dart';
import '../screen/tap_view_category_screens/tap_view_environment_news_screen.dart';
import '../screen/tap_view_category_screens/tap_view_gaming_news_screen.dart';
import '../screen/tap_view_category_screens/tap_view_health_news_screen.dart';
import '../screen/tap_view_category_screens/tap_view_science_news_screen.dart';
import '../screen/tap_view_category_screens/tap_view_tech_news_screen.dart';
import '../utility/app_color.dart';
import 'news_list_widget.dart';

class TabBarViewWidget extends StatefulWidget {
  const TabBarViewWidget({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  State<TabBarViewWidget> createState() => _TabBarViewWidgetState();
}

class _TabBarViewWidgetState extends State<TabBarViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          onTap: (value){},
          controller: widget.tabController,
          isScrollable: true,
          indicatorColor: AppColor.primaryColor,
          indicator: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(6),
          ),
          dividerHeight: 0,
          labelColor: Colors.white,

          automaticIndicatorColorAdjustment: true,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
          indicatorSize: TabBarIndicatorSize.tab,
          tabAlignment: TabAlignment.start,
          tabs: const [
            Tab(child: Text("Tech"),),
            Tab(child: Text("Programming"),),
            Tab(child: Text("Cybersecurity"),),
            Tab(child: Text("Crypto"),),
            Tab(child: Text("gaming"),),
            Tab(child: Text("Science"),),
            Tab(child: Text("Space"),),
            Tab(child: Text("Environment"),),
            Tab(child: Text("Entrepreneurship"),),
            Tab(child: Text("Health"),),
          ],
        ),
        const SizedBox(height: 24,),
        Expanded(
          child: TabBarView(
              controller: widget.tabController,
              children: const [
                TapViewTechNewsScreen(),
                TapViewProgrammingScreen(),
                TapViewCybersecurityNewsScreen(),
                TabViewCryptoNewsScreen(),
                TapViewGamingNewsScreen(),
                TapViewScienceNewsScreen(),
                TapViewSpaceNewsScreen(),
                TapViewEnvironmentNewsScreen(),
                TapViewEntrepreneurshipNewsScreen(),
                TapViewHealthNewsScreen(),
              ]
          ),
        ),
      ],
    );
  }
}