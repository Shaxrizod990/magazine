import 'package:bloc/bloc.dart';
import 'package:magazine/utils/constants.dart';

import 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {


  NavigationCubit() :super(
      const NavigationState(bottomNavItems: Routes.searchNamedPage, index: 0));

  void getNavBarItem(int index) {

    switch(index){

      case 0: emit(const NavigationState(bottomNavItems: Routes.searchNamedPage, index: 0));
      case 1: emit(const NavigationState(bottomNavItems: Routes.favoriteNamedPage, index: 1));
      case 2: emit(const NavigationState(bottomNavItems: Routes.downloadedNamedPage, index: 2));
      case 3: emit(const NavigationState(bottomNavItems: Routes.messagesNamedPage, index: 3));
      case 4: emit(const NavigationState(bottomNavItems: Routes.profileNamedPage, index: 4));
    }
  }
}