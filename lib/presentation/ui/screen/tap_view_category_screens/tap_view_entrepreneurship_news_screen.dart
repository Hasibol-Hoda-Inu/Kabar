import 'package:flutter/material.dart';

import 'package:kabar/data/model/network_response.dart';
import 'package:kabar/data/model/science_category_data_model.dart';
import 'package:kabar/data/services/network_caller.dart';
import '../../../../data/utils/urls.dart';
import '../../widgets/news_card_widget.dart';

class TapViewEntrepreneurshipNewsScreen extends StatefulWidget {

  const TapViewEntrepreneurshipNewsScreen({
    super.key,

  });

  @override
  State<TapViewEntrepreneurshipNewsScreen> createState() => _TapViewEntrepreneurshipNewsScreenState();
}

class _TapViewEntrepreneurshipNewsScreenState extends State<TapViewEntrepreneurshipNewsScreen> {

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
    final NetworkResponse response = await NetworkCaller.getRequest(Urls.eCategory);
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
    return getSNInProgress ? const Center(child: CircularProgressIndicator(),) : ListView.separated(
      itemBuilder: (BuildContext context, index)=> NewsCard(articles: sCDM.articles![index],),
      separatorBuilder: (BuildContext context, index)=> const SizedBox(height: 24,),
      itemCount: sCDM.articles?.length ?? 0,
    );
  }

}
