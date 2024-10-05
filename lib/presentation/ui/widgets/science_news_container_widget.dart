import 'package:flutter/material.dart';
import 'package:kabar/data/model/science_category_data_model.dart';

import '../utility/image_assets.dart';

class ScienceNewsContainer extends StatefulWidget {
  const ScienceNewsContainer({
    super.key,
  });

  @override
  State<ScienceNewsContainer> createState() => _ScienceNewsContainerState();
}

class _ScienceNewsContainerState extends State<ScienceNewsContainer> {
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
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewsDetailsScreen(articles: null,)));
  }
}