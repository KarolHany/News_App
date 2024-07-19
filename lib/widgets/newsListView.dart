import 'package:flutter/material.dart';
import 'package:news_app_ths/models/articales_model.dart';
import 'package:news_app_ths/widgets/newsCard.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articles,
  });

 final List<ArticalesModel> articles ;

  @override
  Widget build(BuildContext context) {
    return  SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: articles.length,
                (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 22),
                      child: NewsCard(
                        articales: articles[index],
                      ),
                    )),
          );
  }
}
