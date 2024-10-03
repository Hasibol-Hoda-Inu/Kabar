import 'package:flutter/material.dart';

import 'news_container_widget.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, index)=>const NewsContainer(),
      separatorBuilder: (BuildContext context, index)=>const SizedBox(height: 16,),
      itemCount: 10,
    ),
    );
  }
}