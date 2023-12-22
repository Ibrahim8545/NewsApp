import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_maodel.dart';
import 'package:newsapp/models/news_titles.dart';
import 'package:newsapp/sevices/news_services.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
  
}

class _NewsListViewState extends State<NewsListView> 
{
  List<ArticleModel>articles=[];
  bool isLoading=true;
    @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

    Future<void> getGeneralNews() async
     {

       try {
       await NewsService(Dio()).getNews();
       isLoading=false;
      setState(() {
         // Assuming getNews() returns a List<ArticleModel>
      });
    } catch (e) {
      // Handle errors or show an error message
      print('Error fetching news: $e');
    }
      // articles=await NewsService(Dio()).getNews();
      // setState(() {
      
      // });

     } 
  
  @override
    Widget build(BuildContext context)
   { 
    return isLoading? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    :SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: articles.length,
              (context, index) 
            {
               return  Padding(
                 padding: const  EdgeInsets.only(bottom: 22),
                 child: NewsTitles(
                  articleModel: articles[index],
                 ),
               );
            }));
  }


}

// or dy
// ListView.builder(
//        shrinkWrap: true, 
//           itemCount:10,
//           itemBuilder: (context,index)
//           {
//            return  const Padding(
//               padding:  EdgeInsets.only(bottom: 22),
//               child: NewsTitles(),

//             );
            
//           });