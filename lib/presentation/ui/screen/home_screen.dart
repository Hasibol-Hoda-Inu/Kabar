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
      body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: Column(
              children: [
                const SizedBox(height: 16,),
                Expanded(
                    child: TabBarViewWidget(
                        tabController: tabController,
                    )
                ),
                  const SizedBox(height: 8,)
              ],
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








