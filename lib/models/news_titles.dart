import 'package:flutter/material.dart';
import 'package:newsapp/models/article_maodel.dart';

class NewsTitles extends StatelessWidget {
  const NewsTitles({super.key, required this.articleModel});
 final  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child:articleModel.image!=null ? Image.network(
           articleModel.image!,
           height:200,
           width: double.infinity,
           fit: BoxFit.fill,
          )
          :Image.asset('assets/images/business.png.jpg'),
        ),
        const SizedBox(
            height:12,
          ),
          Text(
            articleModel.mainTitle,
            style:const  TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(
            height:8,
          ),
          Text(
            articleModel.subTitle!,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
      ],
    );
  }
}