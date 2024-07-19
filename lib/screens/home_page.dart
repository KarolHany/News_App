import 'package:flutter/material.dart';
import 'package:news_app_ths/components/drawer.dart';
import 'package:news_app_ths/widgets/categoriesListView.dart';
import 'package:news_app_ths/widgets/newslistViewBuilder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 15,
                ),
              ),
              const NewsListViewBuilder(
                categoryName: "top",
              ),
            ],
          ),
        ));
  }
}
