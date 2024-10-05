import 'package:flutter/material.dart';

import 'package:kabar/data/model/network_response.dart';
import 'package:kabar/data/model/science_category_data_model.dart';
import 'package:kabar/data/services/network_caller.dart';
import '../../../../data/utils/urls.dart';
import '../../widgets/news_card_widget.dart';

class ScienceNewsScreen extends StatefulWidget {
  final String title;
  const ScienceNewsScreen({super.key, required this.title});

  @override
  State<ScienceNewsScreen> createState() => _ScienceNewsScreenState();
}

class _ScienceNewsScreenState extends State<ScienceNewsScreen> {
  ScienceCategoryDataModel sCDM = ScienceCategoryDataModel();
  bool getSNInProgress = false;

  @override
  void initState() {
    getSCNData();
    super.initState();
  }

  Future<void> getSCNData()async {
    getSNInProgress = true;
    if(mounted){
      setState(() {});
    }
    final NetworkResponse response = await NetworkCaller.getRequest(Urls.scienceCategory);
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: getSNInProgress ? const LinearProgressIndicator() : Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: ListView.separated(
          itemBuilder: (BuildContext context, index)=> NewsCard(articles: sCDM.articles![index],),
          separatorBuilder: (BuildContext context, index)=> const SizedBox(height: 24,),
          itemCount: sCDM.articles?.length ?? 0,
        ),
      ),
    );
  }

}
