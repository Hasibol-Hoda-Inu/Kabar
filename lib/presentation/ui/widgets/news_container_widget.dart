import 'package:flutter/material.dart';

import '../screen/news_details_screen.dart';
import '../utility/image_assets.dart';

class NewsContainer extends StatefulWidget {
  const NewsContainer({
    super.key,
  });

  @override
  State<NewsContainer> createState() => _NewsContainerState();
}

class _NewsContainerState extends State<NewsContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapNewsListContainerMethod,
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(ImageAssets.newsImage, width: 96,)
              ],
            ),
            const SizedBox(width: 8,),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Europe'),
                  SizedBox(height: 8,),
                  Text("Ukraine's President Zelensky to BBC: Blood money being paid",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
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
          ],
        ),
    );
  }

  void _onTapNewsListContainerMethod(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewsDetailsScreen()));
  }
}