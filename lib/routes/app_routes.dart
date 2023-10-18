import 'package:flutter/material.dart';
import 'package:trip/presentation/home_vtwo_tab_container_screen/home_vtwo_tab_container_screen.dart';
import 'package:trip/presentation/home_scroll_container_screen/home_scroll_container_screen.dart';
import 'package:trip/presentation/detail_event_screen/detail_event_screen.dart';
import 'package:trip/presentation/detail_organizer_about_tab_container_screen/detail_organizer_about_tab_container_screen.dart';
import 'package:trip/presentation/frame_13907_screen/frame_13907_screen.dart';
import 'package:trip/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeVtwoPage = '/home_vtwo_page';

  static const String homeVtwoTabContainerScreen =
      '/home_vtwo_tab_container_screen';

  static const String homeScrollPage = '/home_scroll_page';

  static const String homeScrollContainerScreen =
      '/home_scroll_container_screen';

  static const String detailEventScreen = '/detail_event_screen';

  static const String detailOrganizerAboutPage = '/detail_organizer_about_page';

  static const String detailOrganizerAboutTabContainerScreen =
      '/detail_organizer_about_tab_container_screen';

  static const String frame13907Screen = '/frame_13907_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeVtwoTabContainerScreen: (context) => HomeVtwoTabContainerScreen(),
    homeScrollContainerScreen: (context) => HomeScrollContainerScreen(),
    detailEventScreen: (context) => DetailEventScreen(),
    detailOrganizerAboutTabContainerScreen: (context) =>
        DetailOrganizerAboutTabContainerScreen(),
    frame13907Screen: (context) => Frame13907Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
