import 'package:flutter/material.dart';

import '../widgets/news_card_widget.dart';

class LatestNewsScreen extends StatefulWidget {
  const LatestNewsScreen({super.key});

  @override
  State<LatestNewsScreen> createState() => _LatestNewsScreenState();
}

class _LatestNewsScreenState extends State<LatestNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latest"),
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
