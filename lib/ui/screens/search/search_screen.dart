import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magazine/ui/blocs/article/article_cubit.dart';
import 'package:magazine/ui/blocs/article/article_state.dart';
import 'package:magazine/ui/blocs/journal_cubit/journal_cubit.dart';
import 'package:magazine/ui/blocs/journal_cubit/journal_state.dart';
import 'package:magazine/ui/screens/search/common/widgets/item_journal_loading.dart';
import 'package:magazine/utils/assets.dart';
import 'common/widgets/item_article.dart';
import 'common/widgets/item_article_loading.dart';
import 'common/widgets/item_journal.dart';
import 'common/widgets/search_bg.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: SearchScreenAppBar(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocProvider(
                    create: (context) {
                      return JournalCubit()..init();
                    },
                    child: BlocBuilder<JournalCubit, JournalState>(
                      builder: (context, state) {
                        return Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                height: 156,
                                width: double.infinity,
                                child: state.loading == null
                                    ? Container(
                                        child: Text("error"),
                                      )
                                    : state.loading == false
                                        ? Container(
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: state.journals.length,
                                              itemBuilder: (context, index) {
                                                return ItemJournal(
                                                  journal:
                                                      state.journals[index],
                                                );
                                              },
                                            ),
                                          )
                                        : ItemJournalLoading()));
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                    child: Text(
                      'Siz uchun maqolalar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            BlocProvider(
              create: (context) {
                return ArticleCubit()..init();
              },
              child: BlocBuilder<ArticleCubit, ArticleState>(
                builder: (context, state) {
                  return state.loading == null
                      ? SliverToBoxAdapter(
                          child: Container(
                            child: Text('Error'),
                          ),
                        )
                      : state.loading == false
                          ? SliverPadding(
                              padding: EdgeInsets.all(16),
                              sliver: SliverList.builder(
                                itemCount: state.articles.length,
                                itemBuilder: (context, index) {
                                  return ItemArticle(
                                    article: state.articles[index],
                                  );
                                },
                              ),
                            )
                          : SliverPadding(
                              padding: EdgeInsets.all(16),
                              sliver: SliverList.builder(
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return ItemArticleLoading();
                                },
                              ),
                            );
                },
              ),
            ),
          ],
        ));
  }
}
