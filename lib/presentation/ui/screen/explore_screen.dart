import 'package:flutter/material.dart';
import 'package:kabar/presentation/ui/utility/app_color.dart';
import 'package:kabar/presentation/ui/widgets/k_app_bar_widget.dart';

import '../utility/image_assets.dart';
import '../widgets/category_card_widget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 56,),
              Text("Categories", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),),
              SizedBox(height: 24,),
              CategoryCardWidget(title: 'Tech', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
              CategoryCardWidget(title: 'Programming', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
              CategoryCardWidget(title: 'Cybersecurity', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
              CategoryCardWidget(title: 'Crypto', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
              CategoryCardWidget(title: 'Gaming', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
              CategoryCardWidget(title: 'Science', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
              CategoryCardWidget(title: 'Space', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
              CategoryCardWidget(title: 'Environment', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
              CategoryCardWidget(title: 'Entrepreneurship', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
              CategoryCardWidget(title: 'Health', description: 'The application of scientific knowledge to the practice',),
              SizedBox(height: 16,),
            ],
          ),
        ),
      )
    );
  }
}


