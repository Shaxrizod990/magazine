import '../../../main.dart';
import '../../models/article/article.dart';

class ArticleRepository {
  Future<List<Article>> getAllArticles() async {
    const path = '/articles/v1';
    final response = await dio.get(path);
    final jsonList = response.data as List;
    final articles = jsonList.map((e) => Article.fromJson(e)).toList();
    return articles;
  }
}
