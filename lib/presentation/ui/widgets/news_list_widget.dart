import 'package:flutter/material.dart';

import '../utility/image_assets.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Image.asset(ImageAssets.newsImage, width: 96,)
          ],
        ),
        const SizedBox(width: 8,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 4,),
                          const Text('BBC News', style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 8,),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time_rounded),
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
    );
  }
}