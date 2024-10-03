import 'package:flutter/material.dart';

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
                NewsListWidget(),
                NewsListWidget(),
                NewsListWidget(),
                NewsListWidget(),
                NewsListWidget(),
                NewsListWidget(),
                NewsListWidget(),
                NewsListWidget(),
                NewsListWidget(),
                NewsListWidget(),
              ]
          ),
        ),
      ],
    );
  }
}