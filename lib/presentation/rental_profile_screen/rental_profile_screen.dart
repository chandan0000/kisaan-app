import 'package:asignment/core/app_export.dart';
import 'package:asignment/widgets/app_bar/appbar_iconbutton.dart';
import 'package:asignment/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:asignment/widgets/app_bar/custom_app_bar.dart';
import 'package:asignment/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RentalProfileScreen extends StatelessWidget {
  const RentalProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(394),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUnsplashvuwqzxmxm78,
                      height: getVerticalSize(394),
                      width: getHorizontalSize(375),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(left: 23, right: 23),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomAppBar(
                              leadingWidth: getHorizontalSize(60),
                              leading: AppbarIconbutton(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin: getMargin(left: 24),
                                  onTap: () {
                                    onTapArrowleftone(context);
                                  }),
                              actions: [
                                AppbarIconbutton1(
                                    svgPath: ImageConstant.imgShare,
                                    margin: getMargin(left: 23)),
                                AppbarIconbutton1(
                                    svgPath: ImageConstant.imgBookmarkBlack900,
                                    margin: getMargin(left: 15, right: 23))
                              ],
                            ),
                            SizedBox(height: getVerticalSize(296)),
                            SizedBox(
                              height: getVerticalSize(9),
                              width: getHorizontalSize(100),
                              child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 3,
                                effect: ScrollingDotsEffect(
                                  spacing: 15,
                                  activeDotColor: appTheme.yellow900,
                                  dotColor:
                                      theme.colorScheme.onPrimaryContainer,
                                  dotHeight: getVerticalSize(9),
                                  dotWidth: getHorizontalSize(9),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getVerticalSize(24)),
              SingleChildScrollView(
                child: Padding(
                  padding: getPadding(left: 20, bottom: 59),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1),
                          child: Text("Equipment",
                              style: CustomTextStyles
                                  .labelMediumMontserratGray60001)),
                      SizedBox(height: getVerticalSize(5)),
                      Text("Rotavator",
                          style: CustomTextStyles.titleMediumPrimaryContainer),
                      Padding(
                        padding: getPadding(left: 1, top: 6),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgCut,
                              height: getVerticalSize(13),
                              width: getHorizontalSize(9),
                              margin: getMargin(top: 5, bottom: 8),
                            ),
                            Padding(
                              padding: getPadding(left: 7),
                              child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "240",
                                          style: CustomTextStyles
                                              .titleMediumErrorContainer),
                                      TextSpan(
                                          text: "/ Day",
                                          style: CustomTextStyles
                                              .titleSmallErrorContainer)
                                    ],
                                  ),
                                  textAlign: TextAlign.left),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(19),
                        width: getHorizontalSize(333),
                        margin: getMargin(left: 1, top: 18),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: getPadding(top: 6),
                                child: SizedBox(
                                  width: getHorizontalSize(333),
                                  child: Divider(color: appTheme.gray200),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(left: 9, right: 21),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: AppDecoration.fillOrangeA
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Container(
                                        height: getSize(19),
                                        width: getSize(19),
                                        decoration: BoxDecoration(
                                          color:
                                              theme.colorScheme.errorContainer,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(9),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: getSize(14),
                                      width: getSize(14),
                                      margin: getMargin(top: 2, bottom: 3),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray200,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(7),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: getSize(14),
                                      width: getSize(14),
                                      margin: getMargin(top: 2, bottom: 3),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray200,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(7),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: getPadding(left: 9, top: 4, right: 25),
                          child: Row(children: [
                            Text("Daily",
                                style: CustomTextStyles
                                    .labelMediumMontserratGray60001),
                            Spacer(flex: 53),
                            Text("Weekly",
                                style: CustomTextStyles
                                    .labelMediumMontserratGray60001),
                            Spacer(flex: 46),
                            Text("Monthly",
                                style: CustomTextStyles
                                    .labelMediumMontserratGray60001)
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 35),
                          child: Text("Description",
                              style: CustomTextStyles.labelLargeSemiBold)),
                      Container(
                          width: getHorizontalSize(342),
                          margin: getMargin(left: 1, top: 5, right: 14),
                          child: Text(
                              "The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: getPadding(left: 1, top: 44),
                          child: Text("Seller Information",
                              style: CustomTextStyles.labelLargeSemiBold)),
                      Container(
                        margin: getMargin(left: 1, top: 14, right: 19),
                        padding: getPadding(
                            left: 15, top: 12, right: 15, bottom: 12),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder14),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(right: 21),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUnsplashtwosyptnm94,
                                      height: getSize(37),
                                      width: getSize(37),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(18))),
                                  Padding(
                                    padding:
                                        getPadding(left: 14, top: 4, bottom: 8),
                                    child: Text("Ram Prasad",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainerSemiBold),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgMailPrimarycontainer,
                                    height: getSize(32),
                                    width: getSize(32),
                                    margin: getMargin(bottom: 4),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: getPadding(top: 1, right: 28),
                                child: Text("2km",
                                    style: theme.textTheme.labelSmall),
                              ),
                            ),
                            Padding(
                              padding: getPadding(top: 9, right: 12),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgLocationYellow900,
                                      height: getVerticalSize(9),
                                      width: getHorizontalSize(8),
                                      margin: getMargin(top: 2, bottom: 15)),
                                  Container(
                                      width: getHorizontalSize(135),
                                      margin: getMargin(left: 6),
                                      child: Text(
                                          "227, Muradpur,Uttar Pradesh\n110049",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .labelSmallPoppinsPrimaryContainer)),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 12),
                                      child: Text("View Profile",
                                          style: theme.textTheme.labelMedium))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //! Complete
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomElevatedButton(
                                  text: "Contact ",
                                  margin: getMargin(right: 5),
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallGray50001),
                              Padding(
                                padding: getPadding(left: 13, top: 27),
                                child: Text("Related Products",
                                    style: CustomTextStyles.labelLargeSemiBold),
                              ),
                              SizedBox(
                                height: getVerticalSize(9),
                              ),
                              SizedBox(
                                width: getHorizontalSize(420),
                                height: getVerticalSize(200),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  children: [
                                    Container(
                                      margin: getMargin(left: 15),
                                      padding: getPadding(
                                          left: 7, top: 8, right: 7, bottom: 8),
                                      decoration: AppDecoration.outlineBlack
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUnsplashk3cczazt5y8,
                                            height: getVerticalSize(148),
                                            width: getHorizontalSize(144),
                                            radius: BorderRadius.vertical(
                                              top: Radius.circular(
                                                getHorizontalSize(
                                                  10,
                                                ),
                                              ),
                                            ),
                                            margin: getMargin(left: 4, top: 1),
                                          ),
                                          Container(
                                            height: getVerticalSize(28),
                                            width: getHorizontalSize(46),
                                            margin: getMargin(left: 3, top: 4),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Text("Wheat",
                                                          style: theme.textTheme
                                                              .labelLarge)),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text("Equipment",
                                                          style: CustomTextStyles
                                                              .labelSmallGray60001))
                                                ]),
                                          ),
                                          Padding(
                                            padding:
                                                getPadding(left: 4, top: 1),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLocation,
                                                  height: getSize(8),
                                                  width: getSize(8),
                                                  margin: getMargin(
                                                      top: 7, bottom: 4),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                      left: 1,
                                                      top: 6,
                                                      bottom: 4),
                                                  child: Text("23 Km",
                                                      style: theme.textTheme
                                                          .labelSmall),
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSignal,
                                                  height: getVerticalSize(10),
                                                  width: getHorizontalSize(7),
                                                  margin: getMargin(
                                                      left: 45,
                                                      top: 5,
                                                      bottom: 4),
                                                ),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 2),
                                                    child: Text(" 250",
                                                        style: theme.textTheme
                                                            .titleSmall)),
                                                Padding(
                                                  padding: getPadding(
                                                      left: 2,
                                                      top: 3,
                                                      bottom: 2),
                                                  child: Text("/Day",
                                                      style: theme.textTheme
                                                          .labelMedium),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: getVerticalSize(25)),
                              Align(
                                alignment: Alignment.center,
                                child: Text("View more",
                                    style:
                                        CustomTextStyles.labelLargeYellow900),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
