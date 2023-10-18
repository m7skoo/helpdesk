import '../home_vtwo_page/widgets/eventcard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:trip/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeVtwoPage extends StatefulWidget {
  const HomeVtwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeVtwoPageState createState() => HomeVtwoPageState();
}

class HomeVtwoPageState extends State<HomeVtwoPage>
    with AutomaticKeepAliveClientMixin<HomeVtwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 21.v),
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Text(
                                  "lbl".tr,
                                  style: CustomTextStyles.titleSmallGray500,
                                ),
                              ),
                              Text(
                                "lbl2".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 19.v,
                                right: 25.h,
                              ),
                              child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    height: 1.v,
                                  );
                                },
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return EventcardItemWidget();
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 22.v,
                              right: 25.h,
                            ),
                            child: Text(
                              "msg3".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        SizedBox(
                          height: 122.v,
                          width: 327.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 106.v,
                                  width: 313.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray900.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(
                                      12.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    right: 2.h,
                                    bottom: 2.v,
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 12.v),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 1.v,
                                          bottom: 3.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              width: 169.h,
                                              child: Text(
                                                "msg4".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style: theme
                                                    .textTheme.titleSmall!
                                                    .copyWith(
                                                  height: 1.50,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 17.v),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 5.h,
                                                    vertical: 6.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillRed
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(height: 2.v),
                                                      Text(
                                                        "lbl_150".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeDeeporange400,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 17.h,
                                                    top: 7.v,
                                                    bottom: 6.v,
                                                  ),
                                                  child: Text(
                                                    "lbl_4".tr,
                                                    style: theme
                                                        .textTheme.labelLarge,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgClock,
                                                  height: 14.adaptSize,
                                                  width: 14.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    left: 4.h,
                                                    top: 9.v,
                                                    bottom: 9.v,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 96.v,
                                        width: 87.h,
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImg96x87,
                                              height: 96.v,
                                              width: 87.h,
                                              radius: BorderRadius.circular(
                                                12.h,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  left: 7.h,
                                                  top: 8.v,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 7.h,
                                                  vertical: 2.v,
                                                ),
                                                decoration: AppDecoration
                                                    .fillWhiteA
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "lbl_24".tr,
                                                      style: CustomTextStyles
                                                          .labelLargeGray900,
                                                    ),
                                                    Text(
                                                      "lbl3".tr,
                                                      style: theme
                                                          .textTheme.labelSmall,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
