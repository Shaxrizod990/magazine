import 'package:meta/meta.dart';

import '../../../data/models/article/article.dart';

@immutable
class ArticleState {
  final bool? loading;
  final List<Article> articles;

  const ArticleState({required this.loading, required this.articles});
}
