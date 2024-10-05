import 'package:flutter/material.dart';
import 'package:kabar/presentation/ui/widgets/k_app_bar_widget.dart';

import '../widgets/news_card_widget.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24,),
          Text("BookMarks", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 24,),
          // Expanded(
          //   child: ListView.separated(
          //     itemBuilder: (BuildContext context, index)=> NewsCard(articles: sCDM.articles![index],,),
          //     separatorBuilder: (BuildContext context, index)=>const SizedBox(height: 24,),
          //     itemCount: 10,
          //   ),
          // ),
        ],
      ),
    );
  }
}
