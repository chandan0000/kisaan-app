import 'package:flutter/material.dart';
import 'package:asignment/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillOrangeA => BoxDecoration(
        color: appTheme.orangeA100,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow90001,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              12,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.black900.withOpacity(0.11),
          width: getHorizontalSize(1),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: getHorizontalSize(1),
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderLR21 => BorderRadius.only(
        topLeft: Radius.circular(getHorizontalSize(19)),
        topRight: Radius.circular(getHorizontalSize(21)),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(10)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        getHorizontalSize(10),
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        getHorizontalSize(14),
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        getHorizontalSize(18),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
