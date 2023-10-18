import 'package:flutter/material.dart';
import 'package:trip/core/app_export.dart';
import 'package:trip/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class EventcardItemWidget extends StatelessWidget {
  const EventcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 290.v,
        width: 250.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImg,
              height: 290.v,
              width: 250.h,
              radius: BorderRadius.circular(
                20.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 290.v,
                width: 250.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImg,
                      height: 290.v,
                      width: 250.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImg,
                              height: 290.v,
                              width: 250.h,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 32.h,
                                  top: 12.v,
                                  bottom: 12.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15.h,
                                        vertical: 6.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillWhiteA.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 1.v),
                                          Text(
                                            "lbl_26".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          Text(
                                            "lbl3".tr,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 135.v),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12.h,
                                        vertical: 9.v,
                                      ),
                                      decoration:
                                          AppDecoration.outlineGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 3.v),
                                          Text(
                                            "msg".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          SizedBox(height: 6.v),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: CustomElevatedButton(
                                                  text: "lbl_150".tr,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 9.h,
                                                  top: 6.v,
                                                  bottom: 7.v,
                                                ),
                                                child: Text(
                                                  "lbl_4".tr,
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgClock,
                                                height: 14.adaptSize,
                                                width: 14.adaptSize,
                                                margin: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 8.v,
                                                  bottom: 7.v,
                                                ),
                                              ),
                                            ],
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
