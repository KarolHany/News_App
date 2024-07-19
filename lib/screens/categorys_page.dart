import 'package:flutter/material.dart';
import 'package:news_app_ths/widgets/newslistViewBuilder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            NewsListViewBuilder(
              categoryName: categoryName,
            ),
          ],
        ),
      ),
    );
  }
}
