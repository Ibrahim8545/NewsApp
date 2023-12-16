
import 'package:flutter/material.dart';
import 'package:newsapp/models/catogery_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this .category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
      ),
      child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.amber,
            image:  DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage(category.imageAssetsUrl)
              ),
            borderRadius: BorderRadius.circular(15.0),
            
           
          ),
          child: Center(
          child: Text(
          category.categoryName,
          style: (
            const TextStyle(
            color: Colors.white,
            fontSize:16,
            fontWeight: FontWeight.bold 
          )),
          )
          ),
        ),
    );
  }
}