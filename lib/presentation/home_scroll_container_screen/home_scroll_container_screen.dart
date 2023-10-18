import 'package:flutter/material.dart';
import 'package:trip/core/app_export.dart';
import 'package:trip/presentation/home_scroll_page/home_scroll_page.dart';
import 'package:trip/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScrollContainerScreen extends StatelessWidget {
  HomeScrollContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeScrollPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScrollPage:
        return HomeScrollPage();
      default:
        return HomeScrollPage();
    }
  }
}
