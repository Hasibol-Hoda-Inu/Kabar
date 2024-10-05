import 'package:flutter/material.dart';
import 'package:kabar/data/model/science_category_data_model.dart';
import 'package:kabar/presentation/ui/utility/app_color.dart';

import '../utility/formated_date_time_method.dart';
import '../utility/url_launcher.dart';

class NewsCard extends StatefulWidget {
  final Articles articles;

  const NewsCard({
    super.key,
    required this.articles,
  });

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(widget.articles.urlToImage ?? "https://contentstatic.techgig.com/photo/88607432/a-to-z-of-technology-top-tech-news-of-2021-at-a-glance.jpg?32786",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8,),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(widget.articles.source?.name ?? "", style: const
                      TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(width: 8,),
              Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.access_time_rounded, size: 16,),
                      const SizedBox(width: 4,),
                      Text(formatDate(
                          (widget.articles.publishedAt ?? "")
                      ))
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 8,),
          Text(widget.articles.title ?? "null",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            softWrap: true,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4,),
          ElevatedButton(
              onPressed: (){
                LaunchUrlMethod(widget.articles.url ?? "https://pub.dev/packages/url_launcher");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                )
              ),
            child: const Text("Read", style: TextStyle(
              color: Colors.white,
          ),),
              ),
        ],
      ),
    );
  }
}