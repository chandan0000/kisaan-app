import 'package:asignment/core/app_export.dart';
import 'package:asignment/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductviewItemWidget extends StatelessWidget {
  const ProductviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: getVerticalSize(313),
        width: getHorizontalSize(307),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUnsplashctre44l7b8,
              height: getVerticalSize(313),
              width: getHorizontalSize(307),
              radius: BorderRadius.circular(
                getHorizontalSize(10),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  bottom: 23,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "All grains",
                      style: CustomTextStyles.labelLargeOnPrimaryContainer,
                    ),
                    Text(
                      "Newest Products",
                      style: CustomTextStyles.titleMediumOnPrimaryContainer,
                    ),
                    CustomElevatedButton(
                      width: getHorizontalSize(174),
                      text: "View all",
                      margin: getMargin(
                        top: 14,
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
