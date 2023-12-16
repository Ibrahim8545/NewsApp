import 'package:flutter/material.dart';
import 'package:newsapp/widgets/catgories_list_view.dart';
import 'package:newsapp/widgets/new_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        
      ),
      body:const  Padding(
        padding:EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
           SliverToBoxAdapter(child:CategoriesListView()),
           SliverToBoxAdapter(child:SizedBox(height:32),),
           NewsListView(),
          ],
        ),
      ),
       
    );
  }
}
//  const Column(
//             children: [
//                CategoriesListView(),
//               SizedBox(height:32),
//                 Expanded(child: NewsListView()),
//             ],
//           ),