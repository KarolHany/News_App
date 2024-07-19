import 'package:dio/dio.dart';
import 'package:news_app_ths/models/articales_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticalesModel>> getGeneralNews(
      {required String categoryName}) async {
    try {
      var response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_48877d7f24eb03c0801a6f75f198c168effea&country=fr&category=$categoryName');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];
      List<ArticalesModel> articalesList = [];
      for (var article in articles) {
        ArticalesModel articalesModel = ArticalesModel.fromJson(article);
          if(article['title']!="[Removed]"){
               articalesList.add(articalesModel);
          }        
        
       
      }
      return articalesList;
    } catch (e) {
      return [];
    }
  }
}
