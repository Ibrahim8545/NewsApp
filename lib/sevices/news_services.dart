import 'package:dio/dio.dart';
import 'package:newsapp/models/article_maodel.dart';


class NewsService
{
  
   final Dio dio;
   final String baseurl='https://newsapi.org/v2';
   final String apiKey='d0ba5dd3999349b996e9964fbf6225d7';
  NewsService(this.dio);
  getNews()async
  {
       Response response= await dio.get
    ('https://newsapi.org/v2 /top-headlines?apiKeyd0ba5dd3999349b996e9964fbf6225d7=&country=eg&category=general');

     Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];
      for(var article in articles)
      {
        ArticleModel articleModel=ArticleModel(
          image:article['urlToImage'],
         mainTitle: article['title'],
        subTitle: article['description']
        );
        articlesList.add(articleModel);
      }
      
    
    
    
   
  }

}