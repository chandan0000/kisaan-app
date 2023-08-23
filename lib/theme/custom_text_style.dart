import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeMukta => theme.textTheme.labelLarge!.mukta.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeYellow900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.yellow900,
        fontSize: getFontSize(
          12,
        ),
      );
  static get labelMediumGray500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get labelMediumMontserratGray60001 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.gray60001,
      );
  static get labelMediumPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.38),
      );
  static get labelSmallGray60001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallMuktaGray60001 =>
      theme.textTheme.labelSmall!.mukta.copyWith(
        color: appTheme.gray60001,
        fontSize: getFontSize(
          9,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelSmallPoppinsGray10002 =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: appTheme.gray10002,
        fontSize: getFontSize(
          9,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelSmallPoppinsGray80001 =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: appTheme.gray80001,
        fontSize: getFontSize(
          9,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelSmallPoppinsOnPrimaryContainer =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: getFontSize(
          9,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelSmallPoppinsPrimaryContainer =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          9,
        ),
        fontWeight: FontWeight.w500,
      );
  // Poppins text style
  static get poppinsGray800 => TextStyle(
        color: appTheme.gray800,
        fontSize: getFontSize(
          6,
        ),
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsTeal500 => TextStyle(
        color: appTheme.teal500,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w600,
      ).poppins;
  static get poppinsYellow90001 => TextStyle(
        color: appTheme.yellow90001,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w600,
      ).poppins;
  // Title text style
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumErrorContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallOnPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallPrimaryContainer15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          15,
        ),
      );
}

extension on TextStyle {
  TextStyle get mukta {
    return copyWith(
      fontFamily: 'Mukta',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
