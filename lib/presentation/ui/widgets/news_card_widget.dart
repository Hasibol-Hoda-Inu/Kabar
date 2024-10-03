import 'package:flutter/material.dart';

import '../screen/news_details_screen.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({
    super.key,
  });

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapNewsListContainerMethod,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/img.webp",
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8,),
            const Text('Europe'),
            const SizedBox(height: 8,),
            const Text("Ukraine's President Zelensky to BBC: Blood money being paid",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              softWrap: true,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4,),
            const Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text('BBC News', style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    )
                  ],
                ),
                SizedBox(width: 8,),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_time_rounded, size: 16,),
                        Text('14m ago')
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onTapNewsListContainerMethod(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewsDetailsScreen()));
  }
}