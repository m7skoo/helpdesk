import 'package:flutter/material.dart';
import 'package:trip/core/app_export.dart';

class Frame13907Screen extends StatelessWidget {
  const Frame13907Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 500.adaptSize,
          width: 500.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 467.adaptSize,
                  width: 467.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.indigoA700.withOpacity(0.04),
                    borderRadius: BorderRadius.circular(
                      233.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img201,
                height: 424.v,
                width: 195.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 10.h,
                  bottom: 14.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img181,
                height: 424.v,
                width: 195.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
