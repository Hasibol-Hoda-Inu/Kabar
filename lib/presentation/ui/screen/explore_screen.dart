import 'package:flutter/material.dart';
import 'package:kabar/presentation/ui/screen/category_screens/crypto_news_screen.dart';
import 'package:kabar/presentation/ui/screen/category_screens/cybersecurity_news_screen.dart';
import 'package:kabar/presentation/ui/screen/category_screens/science_news_screen.dart';
import 'package:kabar/presentation/ui/screen/category_screens/tech_news_screen.dart';

import '../widgets/category_card_widget.dart';
import 'category_screens/entrepreneurship_news_screen.dart';
import 'category_screens/environment_news_screen.dart';
import 'category_screens/gaming_news_screen.dart';
import 'category_screens/health_news_screen.dart';
import 'category_screens/programming_news_screen.dart';
import 'category_screens/space_news_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24,),
              const Text("Categories", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),),
              const SizedBox(height: 24,),
              CategoryCardWidget(
                title: 'Tech',
                description: 'The application of scientific knowledge to the practice',
                navigateToNextScreen: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const TechNewsScreen()));
                  },),
              const SizedBox(height: 16,),
              CategoryCardWidget(title: 'Programming', description: 'The application of scientific knowledge to the practice', navigateToNextScreen: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProgrammingNewsScreen(title: 'Programming',)));
              },),
              const SizedBox(height: 16,),
              CategoryCardWidget(title: 'Cybersecurity', description: 'The application of scientific knowledge to the practice', navigateToNextScreen: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CyberSecurityNewsScreen(title: 'Cyber Security',)));
              },),
              const SizedBox(height: 16,),
              CategoryCardWidget(title: 'Crypto', description: 'The application of scientific knowledge to the practice', navigateToNextScreen: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CryptoNewsScreen(title: 'Crypto',)));
              },),
              const SizedBox(height: 16,),
              CategoryCardWidget(title: 'Gaming', description: 'The application of scientific knowledge to the practice', navigateToNextScreen: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const GamingNewsScreen(title: 'Gaming',)));
              },),
              const SizedBox(height: 16,),
              CategoryCardWidget(title: 'Science', description: 'The application of scientific knowledge to the practice', navigateToNextScreen: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScienceNewsScreen(title: 'Science',)));
              },),
              const SizedBox(height: 16,),
              CategoryCardWidget(title: 'Space', description: 'The application of scientific knowledge to the practice', navigateToNextScreen: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SpaceNewsScreen(title: 'Space',)));
              },),
              const SizedBox(height: 16,),
              CategoryCardWidget(title: 'Environment', description: 'The application of scientific knowledge to the practice', navigateToNextScreen: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const EnvironmentNewsScreen(title: 'Environment',)));
              },),
              const SizedBox(height: 16,),
              CategoryCardWidget(title: 'Entrepreneurship', description: 'The application of scientific knowledge to the practice', navigateToNextScreen: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const EntrepreneurshipNewsScreen(title: 'Entrepreneurship',)));
              },),
              const SizedBox(height: 16,),
              CategoryCardWidget(title: 'Health', description: 'The application of scientific knowledge to the practice', navigateToNextScreen: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const HealthNewsScreen(title: 'Health',)));
              },),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      )
    );
  }
}


