import 'package:flutter/material.dart';
import 'package:kabar/presentation/ui/screen/trending_news_screen.dart';

import '../widgets/k_app_bar_widget.dart';
import '../widgets/news_card_widget.dart';
import '../widgets/section_title_widget.dart';
import '../widgets/tab_bar_view_widget.dart';
import 'latest_news_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 10, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(),
      body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 24,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.tune_rounded),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(6)
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(6)
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(6)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(6)
                      ),
                    ),
                  ),
                  SectionTitle(
                    title: 'Trending',
                    navigateToNextScreenMethod: _goToTrendingScreen,),
                  const NewsCard(),
                  const SizedBox(height: 16,),
                  SectionTitle(
                    title: 'Latest',
                    navigateToNextScreenMethod: _goToLatestNewsScreen,),
                  SizedBox(height:1300, child: Expanded(child: TabBarViewWidget(tabController: tabController))),
                    const SizedBox(height: 8,)
                ],
              ),
            ),
          ),
    );
  }

  void _goToTrendingScreen(){
    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>const TrendingNewsScreen()));
  }

  void _goToLatestNewsScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LatestNewsScreen()));
  }
}








