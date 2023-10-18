import 'package:flutter/material.dart';
import 'package:trip/core/app_export.dart';
import 'package:trip/presentation/home_vtwo_page/home_vtwo_page.dart';
import 'package:trip/widgets/app_bar/appbar_subtitle.dart';
import 'package:trip/widgets/app_bar/appbar_title.dart';
import 'package:trip/widgets/app_bar/custom_app_bar.dart';
import 'package:trip/widgets/custom_bottom_bar.dart';
import 'package:trip/widgets/custom_search_view.dart';

class HomeVtwoTabContainerScreen extends StatefulWidget {
  const HomeVtwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeVtwoTabContainerScreenState createState() =>
      HomeVtwoTabContainerScreenState();
}

class HomeVtwoTabContainerScreenState extends State<HomeVtwoTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 44.h,
          leading: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(bottom: 6.v),
            color: appTheme.gray50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.fromLTRB(15.h, 1.v, 1.h, 15.v),
                      decoration: BoxDecoration(
                        color: appTheme.redA200,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                        border: Border.all(
                          color: appTheme.whiteA700,
                          width: 1.h,
                          strokeAlign: strokeAlignOutside,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          title: AppbarSubtitle(
            text: "msg5".tr,
            margin: EdgeInsets.only(left: 30.h),
          ),
          actions: [
            AppbarTitle(
              text: "lbl4".tr,
              margin: EdgeInsets.only(top: 5.v),
            ),
          ],
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomSearchView(
                  margin: EdgeInsets.only(
                    left: 24.h,
                    top: 7.v,
                    right: 24.h,
                  ),
                  controller: searchController,
                  alignment: Alignment.center,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 18.v, 30.h, 18.v),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgSearch,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 56.v,
                  ),
                  suffix: Padding(
                    padding: EdgeInsets.only(
                      right: 15.h,
                    ),
                    child: IconButton(
                      onPressed: () {
                        searchController.clear();
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Container(
                      height: 40.v,
                      width: 64.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray50,
                        borderRadius: BorderRadius.circular(
                          12.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 40.v,
                      width: 299.h,
                      margin: EdgeInsets.only(left: 12.h),
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: appTheme.whiteA700,
                        unselectedLabelColor: appTheme.gray900,
                        tabs: [
                          Tab(
                            child: Text(
                              "lbl5".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl6".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl7".tr,
                            ),
                          ),
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl8".tr,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgMenu2,
                                  height: 13.adaptSize,
                                  width: 13.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 3.h,
                                    top: 2.v,
                                    bottom: 2.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 470.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    HomeVtwoPage(),
                    HomeVtwoPage(),
                    HomeVtwoPage(),
                    HomeVtwoPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
