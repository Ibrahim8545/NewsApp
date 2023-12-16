import 'package:flutter/material.dart';
import 'package:newsapp/models/catogery_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
 

  
  final List<CategoryModel> categories=const
  [
    CategoryModel(imageAssetsUrl: 'image/business.png.jpg', categoryName: 'Busieness'),
    CategoryModel(imageAssetsUrl: 'image/entertaiment.png', categoryName:'Entertaiment'),
    CategoryModel(imageAssetsUrl: 'image/general.png', categoryName: 'Genral'),
    CategoryModel(imageAssetsUrl: 'image/health.png', categoryName: 'Health'),
    CategoryModel(imageAssetsUrl: 'image/science.png', categoryName: 'Science'),
    CategoryModel(imageAssetsUrl: 'image/sports.png', categoryName: 'Sports'),
    CategoryModel(imageAssetsUrl: 'image/technology.jpeg', categoryName: 'Technology'),
  ]; 
  @override

  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)
          {
            return  CategoryCard(
              category: categories[index],
            );
          }
          ),
      );
  }
}