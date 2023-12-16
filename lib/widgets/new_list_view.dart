import 'package:flutter/cupertino.dart';
import 'package:newsapp/models/news_titles.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context)
   {
    return  SliverList(
              delegate: SliverChildBuilderDelegate(childCount: 10,
              (context, index) 
            {
               return const Padding(
                 padding:  EdgeInsets.only(bottom: 22),
                 child: NewsTitles(),
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