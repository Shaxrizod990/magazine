
import 'package:bloc/bloc.dart';

import '../../../data/repository/api/article_repository.dart';
import 'article_state.dart';

class ArticleCubit extends Cubit<ArticleState> {

  ArticleCubit() :super(const ArticleState(loading: true, articles: []));

  final _repository = ArticleRepository();

  Future<void> init() async {
    loadAllArticles();
  }

  Future<void> loadAllArticles() async {
    try {
      emit(const ArticleState(loading: true, articles: []));
      final articles = await _repository.getAllArticles();
      emit(ArticleState(loading: false, articles: articles));
    } catch (e) {
      emit(const ArticleState(loading: null, articles: []));
    }
  }
}