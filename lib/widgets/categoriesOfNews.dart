import 'package:flutter/material.dart';
import 'package:news_app_ths/models/categoryClass.dart';
import 'package:news_app_ths/screens/categorys_page.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.catetegory});
  final CategoryClass catetegory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryPage(
            categoryName: catetegory.text,
          ),
        ));
      },
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(catetegory.image), fit: BoxFit.fill)),
        margin: const EdgeInsets.only(right: 5),
        child: Center(
            child: Text(
          catetegory.text,
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
