import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/presentation/ui/utility/formated_date_time_method.dart';

import '../../../data/model/science_category_data_model.dart';

class NewsDetailsScreen extends StatefulWidget {
  const NewsDetailsScreen({
    super.key,
    required this.articles,
  });

  final Articles articles;

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.share))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(widget.articles.source?.name ?? "", style: const TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                const SizedBox(width: 8,),
                const Icon(Icons.access_time_rounded, size: 16,),
                const SizedBox(width: 4,),
                Text(
                    formatDate(widget.articles.publishedAt ?? "")
                ),
              ],
            ),
            const SizedBox(height: 8,),
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(widget.articles.urlToImage ?? "https://contentstatic.techgig.com/photo/88607432/a-to-z-of-technology-top-tech-news-of-2021-at-a-glance.jpg?32786",),
            ),
            const SizedBox(height: 8,),
            const Text('Science'),
            const SizedBox(height: 16,),
            Text(widget.articles.title ?? "", style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
            ),),
            const SizedBox(height: 10,),
            Text(widget.articles.content ?? "",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Color(0xff4E4B66),
                )
              ),)
          ],
        ),
      ),
    );
  }
}
