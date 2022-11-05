import 'package:av_spanish/theme/theme.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    Key? key,
    this.maxLines,
    this.textAlign,
    this.overflow,
    required this.style,
  }) : super(key: key);

  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  // FONTS
  static TextStyle get appLargeText => const TextStyle(
        fontFamily: 'RedHat',
        fontWeight: FontWeight.w700,
        color: AppColors.fontBlack,
      );

  static TextStyle get appRegularText => const TextStyle(
        fontFamily: 'RedHat',
        fontWeight: FontWeight.w400,
        color: AppColors.fontBlack,
      );

  // STYLES
  static TextStyle headline1Style = appLargeText.copyWith(
    fontSize: 25,
  );
  static TextStyle body1Style = appRegularText.copyWith(
    fontSize: 16,
  );

  // CONSTRUCTORS FOR USING DIRECLTY INSIDE WIDGETS
  AppText.headline1(
    this.text, {
    Key? key,
    this.textAlign,
    this.maxLines,
    this.overflow,
  })  : style = headline1Style,
        super(key: key);
  AppText.body1(
    this.text, {
    Key? key,
    this.textAlign,
    this.maxLines,
    this.overflow,
  })  : style = body1Style,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: style,
      textAlign: textAlign,
    );
  }
}
