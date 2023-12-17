import 'package:dio/dio.dart';
import 'package:newsapp/models/article_maodel.dart';


class NewsService
{
  
   final Dio dio;
    final String baseUrl = 'https://newsapi.org/v2';
  final String apiKey = 'd0ba5dd3999349b996e9964fbf6225d7';

  NewsService(this.dio);
   
  Future<List<ArticleModel>> getNews() async {
    try {
      var response = await dio.get(
        '$baseUrl/top-headlines',
        queryParameters: {
          'country': 'us',
          'apiKey': apiKey,
        },
      );

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          mainTitle: article['title'],
          subTitle: article['description'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (error) {
      print('Error fetching news: $error');
      // You might want to throw an exception or handle the error differently
      return [];
    }
  }

}