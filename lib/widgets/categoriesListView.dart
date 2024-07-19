import 'package:flutter/material.dart';
import 'package:news_app_ths/models/categoryClass.dart';

import 'categoriesOfNews.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
         //16
  final List<CategoryClass> categories = [
    CategoryClass(text: "business", image: "assets/business.jfif"),
    CategoryClass(text: "entertainment", image: "assets/entertainment.jfif"),
    CategoryClass(text: "health", image: "assets/health.jfif"),
    CategoryClass(text: "science", image: "assets/science.jfif"),
    CategoryClass(text: "sports", image: "assets/sports.jfif"),
    CategoryClass(text: "technology", image: "assets/technology.jfif"),
    CategoryClass(text: "top", image: "assets/general.jfif"),
    CategoryClass(text: "crime", image: "assets/crime.jfif"),
    CategoryClass(text: "domestic", image: "assets/domestic.jfif"),
    CategoryClass(text: "education", image: "assets/education.jfif"),
    CategoryClass(text: "environment", image: "assets/environment.jfif"),
    CategoryClass(text: "food", image: "assets/food.jfif"),
    CategoryClass(text: "lifestyle", image: "assets/lifestyle.jfif"),
    CategoryClass(text:"politics", image: "assets/politics.jfif"),
    CategoryClass(text: "tourism", image: "assets/tourism.jfif"),
    CategoryClass(text: "world", image: "assets/world.jfif"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Category(
          catetegory: categories[index],
        ),
      ),
    );
  }
}
