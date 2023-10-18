import 'package:flutter/material.dart';
import 'package:trip/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          decoration: AppDecoration.text4,
          child: Text(
            text,
            style: CustomTextStyles.titleMedium18.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
      ),
    );
  }
}
