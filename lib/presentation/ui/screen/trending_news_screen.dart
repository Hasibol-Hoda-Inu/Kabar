import 'package:flutter/material.dart';
import 'package:kabar/presentation/ui/widgets/news_card_widget.dart';

class TrendingNewsScreen extends StatefulWidget {
  const TrendingNewsScreen({super.key});

  @override
  State<TrendingNewsScreen> createState() => _TrendingNewsScreenState();
}

class _TrendingNewsScreenState extends State<TrendingNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trending"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: Expanded(
          child: ListView.separated(
            itemBuilder: (BuildContext context, index)=>const NewsCard(),
            separatorBuilder: (BuildContext context, index)=>const SizedBox(height: 24,),
            itemCount: 10,
                      ),
        ),
      ),
    );
  }
}
