import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magazine/utils/constants.dart';
import '../../blocs/navigation/navigation_cubit.dart';
import '../../blocs/navigation/navigation_state.dart';
import '../../widgets/nav_bar_item_widgets.dart';

class MainScreen extends StatelessWidget {
  final Widget screen;

  MainScreen({super.key, required this.screen});

  final tabs = [
    NamedNavigationBarItemWidget(
      initialLocation: Routes.searchNamedPage,
      icon: const Icon(Icons.search),
      label: 'Search',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.favoriteNamedPage,
      icon: const Icon(Icons.favorite),
      label: 'Favorite',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.downloadedNamedPage,
      icon: const Icon(Icons.download_done),
      label: 'Downloaded',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.messagesNamedPage,
      icon: const Icon(Icons.message),
      label: 'Message',
    ),
    NamedNavigationBarItemWidget(
      initialLocation: Routes.profileNamedPage,
      icon: const Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: _buildBottomNavigation(context, tabs),
    );
  }
}

BlocBuilder<NavigationCubit, NavigationState> _buildBottomNavigation(
        mContext, List<NamedNavigationBarItemWidget> tabs) =>
    BlocBuilder<NavigationCubit, NavigationState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: (value) {
            if (state.index != value) {
              context.read<NavigationCubit>().getNavBarItem(value);
              context.goNamed(tabs[value].initialLocation);
            }
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          backgroundColor: Colors.black45,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: ((IconTheme.of(mContext).size)! * 1.3),
          ),
          items: tabs,
          currentIndex: state.index,
          type: BottomNavigationBarType.fixed,
        );
      },
    );
