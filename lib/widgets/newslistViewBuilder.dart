import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ths/models/articales_model.dart';
import 'package:news_app_ths/services/newsService.dart';
import 'package:news_app_ths/widgets/newsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getGeneralNews(categoryName: widget.categoryName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalesModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text("oops there was an error , try again latter"),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
