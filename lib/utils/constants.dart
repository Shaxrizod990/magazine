import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:magazine/utils/not_found_page.dart';

class Routes {
  static const root = '/';
  static const searchNamedPage = 'search';
  static const favoriteNamedPage = 'favorite';
  static const downloadedNamedPage = 'downloaded';
  static const messagesNamedPage = 'messages';
  static const profileNamedPage = 'profile';

  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      const NotFoundPage();
}
