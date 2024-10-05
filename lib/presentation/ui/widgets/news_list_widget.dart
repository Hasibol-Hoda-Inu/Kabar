import 'package:flutter/material.dart';

import '../../../data/model/network_response.dart';
import '../../../data/model/science_category_data_model.dart';
import '../../../data/services/network_caller.dart';
import '../../../data/utils/urls.dart';
import 'science_news_container_widget.dart';

class NewsListWidget extends StatefulWidget {
  const NewsListWidget({
    super.key,
  });

  @override
  State<NewsListWidget> createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {

  ScienceCategoryDataModel sCDM = ScienceCategoryDataModel();

  bool getSNInProgress = false;

  @override
  void initState() {
    getTNData();
    super.initState();
  }

  Future<void> getTNData()async {
    getSNInProgress = true;
    if(mounted){
      setState(() {});
    }
    final NetworkResponse response = await NetworkCaller.getRequest(Urls.programmingCategory);
    if(response.isSuccess){
      sCDM = ScienceCategoryDataModel.fromJson(response.responseData!);
    }else{
      if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("News data get failed")));
      }
    }
    getSNInProgress = false;
    if(mounted){
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.separated(
      itemBuilder: (BuildContext context, index)=>const ScienceNewsContainer(),
      separatorBuilder: (BuildContext context, index)=>const SizedBox(height: 16,),
      itemCount: sCDM.articles?.length ?? 0,
    ),
    );
  }
}