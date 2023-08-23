import '../rent_display_page/widgets/productview_item_widget.dart';
import 'package:asignment/core/app_export.dart';
import 'package:asignment/widgets/custom_outlined_button.dart';
import 'package:asignment/widgets/custom_search_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class RentDisplayPage extends StatefulWidget {
  const RentDisplayPage({Key? key})
      : super(
          key: key,
        );

  @override
  RentDisplayPageState createState() => RentDisplayPageState();
}

class RentDisplayPageState extends State<RentDisplayPage>
    with AutomaticKeepAliveClientMixin<RentDisplayPage> {
  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Padding(
          padding: getPadding(
            top: 81,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CustomSearchView(
                    margin: getMargin(
                      left: 21,
                      right: 27,
                    ),
                    controller: searchController,
                    hintText: "Search Product Name...",
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: getMargin(
                        left: 20,
                        top: 13,
                        right: 12,
                        bottom: 12,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(45),
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(15),
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
                SizedBox(height: getVerticalSize(97)),
                Container(
                  padding: getPadding(
                    left: 17,
                    right: 17,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: getPadding(
                          left: 7,
                          top: 8,
                          right: 7,
                          bottom: 8,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: getVerticalSize(1)),
                            CustomImageView(
                              imagePath: ImageConstant.imgUnsplashwbczla0jafa,
                              height: getVerticalSize(148),
                              width: getHorizontalSize(142),
                              radius: BorderRadius.vertical(
                                top: Radius.circular(getHorizontalSize(10)),
                              ),
                              alignment: Alignment.center,
                            ),
                            Container(
                              height: getVerticalSize(27),
                              width: getHorizontalSize(66),
                              margin: getMargin(
                                left: 5,
                                top: 5,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Rotavator",
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Equipment",
                                      style:
                                          CustomTextStyles.labelSmallGray60001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                                top: 1,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLocation,
                                    height: getVerticalSize(8),
                                    width: getHorizontalSize(7),
                                    margin: getMargin(
                                      top: 7,
                                      bottom: 5,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                      top: 7,
                                      bottom: 3,
                                    ),
                                    child: Text(
                                      "2km",
                                      style: theme.textTheme.labelSmall,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgSignal,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(7),
                                    margin: getMargin(
                                      left: 52,
                                      top: 5,
                                      bottom: 5,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 2,
                                    ),
                                    child: Text(
                                      " 250",
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 1,
                                      top: 3,
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "/day",
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: getVerticalSize(13)),
                      Container(
                        padding: getPadding(
                          all: 7,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: getVerticalSize(2)),
                            CustomImageView(
                              imagePath: ImageConstant.imgUnsplashfjq5wz6sbnu,
                              height: getVerticalSize(148),
                              width: getHorizontalSize(142),
                              radius: BorderRadius.vertical(
                                top: Radius.circular(getHorizontalSize(10)),
                              ),
                              alignment: Alignment.center,
                            ),
                            SizedBox(height: getVerticalSize(4)),
                            SizedBox(
                              height: getVerticalSize(28),
                              width: getHorizontalSize(47),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Planter",
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "Equipmnet",
                                      style:
                                          CustomTextStyles.labelSmallGray60001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                                top: 2,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgLocation,
                                    height: getVerticalSize(8),
                                    width: getHorizontalSize(7),
                                    margin: getMargin(
                                      top: 6,
                                      bottom: 6,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                      top: 6,
                                      bottom: 4,
                                    ),
                                    child: Text(
                                      "2km",
                                      style: theme.textTheme.labelSmall,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgSignal,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(7),
                                    margin: getMargin(
                                      left: 52,
                                      top: 5,
                                      bottom: 5,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 2,
                                    ),
                                    child: Text(
                                      " 250",
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 1,
                                      top: 3,
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "/day",
                                      style: theme.textTheme.labelMedium,
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
                Container(
                  margin: getMargin(
                    left: 16,
                    right: 16,
                  ),
                  padding: getPadding(
                    left: 9,
                    top: 10,
                    right: 9,
                    bottom: 10,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUnsplashtl2bsgrnsm,
                        height: getVerticalSize(148),
                        width: getHorizontalSize(142),
                        radius: BorderRadius.vertical(
                          top: Radius.circular(getHorizontalSize(10)),
                        ),
                      ),
                      SizedBox(height: getVerticalSize(4)),
                      Text(
                        "Transport",
                        style: CustomTextStyles.labelSmallGray60001,
                      ),
                      Text(
                        "Tructor",
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: getVerticalSize(10)),
                      Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocation,
                            height: getVerticalSize(8),
                            width: getHorizontalSize(7),
                            margin: getMargin(
                              bottom: 2,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 3,
                            ),
                            child: Text(
                              "23 Km",
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getVerticalSize(2)),
                    ],
                  ),
                ),
                // Padding(
                //   padding: getPadding(
                //     left: 34,
                //     top: 35,
                //     right: 34,
                //   ),
                //   child: CarouselSlider.builder(
                //     options: CarouselOptions(
                //       height: getVerticalSize(313),
                //       initialPage: 0,
                //       autoPlay: true,
                //       viewportFraction: 1.0,
                //       enableInfiniteScroll: false,
                //       scrollDirection: Axis.horizontal,
                //       onPageChanged: (
                //         index,
                //         reason,
                //       ) {
                //         sliderIndex = index;
                //       },
                //     ),
                //     itemCount: 1,
                //     itemBuilder: (context, index, realIndex) {
                //       return ProductviewItemWidget();
                //     },
                //   ),
                // ),
                SizedBox(height: getVerticalSize(20)),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: getVerticalSize(6),
                    child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex,
                      count: 1,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 10,
                        activeDotColor: appTheme.yellow900,
                        dotColor: appTheme.gray400,
                        dotHeight: getVerticalSize(6),
                        dotWidth: getHorizontalSize(6),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getVerticalSize(21),
                    width: getHorizontalSize(96),
                    margin: getMargin(
                      left: 35,
                      top: 42,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Top Products",
                            style: CustomTextStyles.titleSmallPrimaryContainer,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Top Products",
                            style: CustomTextStyles.titleSmallPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 14,
                    top: 23,
                    right: 14,
                  ),
                  padding: getPadding(
                    left: 9,
                    top: 7,
                    right: 9,
                    bottom: 7,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: getVerticalSize(148),
                        width: getHorizontalSize(144),
                        margin: getMargin(
                          left: 2,
                          top: 2,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgClock,
                              height: getVerticalSize(14),
                              width: getHorizontalSize(16),
                              alignment: Alignment.topRight,
                              margin: getMargin(
                                top: 9,
                                right: 7,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUnsplashjuhadasanaq,
                              height: getVerticalSize(148),
                              width: getHorizontalSize(144),
                              radius: BorderRadius.vertical(
                                top: Radius.circular(getHorizontalSize(10)),
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                          top: 4,
                        ),
                        child: Text(
                          "Grains",
                          style: CustomTextStyles.labelSmallGray60001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                        ),
                        child: Text(
                          "Wheat",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                          top: 2,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLocation,
                              height: getVerticalSize(8),
                              width: getHorizontalSize(7),
                              margin: getMargin(
                                top: 6,
                                bottom: 6,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 3,
                                top: 6,
                                bottom: 4,
                              ),
                              child: Text(
                                "23 Km",
                                style: theme.textTheme.labelSmall,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgSignal,
                              height: getVerticalSize(10),
                              width: getHorizontalSize(7),
                              margin: getMargin(
                                left: 43,
                                top: 5,
                                bottom: 5,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                              ),
                              child: Text(
                                " 250",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 1,
                                top: 3,
                                bottom: 2,
                              ),
                              child: Text(
                                "/day",
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: getMargin(
                      left: 19,
                      right: 19,
                    ),
                    padding: getPadding(
                      left: 10,
                      top: 7,
                      right: 10,
                      bottom: 7,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnsplashjxbmx7dshj8,
                          height: getVerticalSize(148),
                          width: getHorizontalSize(142),
                          radius: BorderRadius.vertical(
                            top: Radius.circular(getHorizontalSize(10)),
                          ),
                          margin: getMargin(
                            left: 2,
                            top: 2,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                            top: 4,
                          ),
                          child: Text(
                            "Vegetables",
                            style: CustomTextStyles.labelSmallGray60001,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                          ),
                          child: Text(
                            "Tomatos",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                            top: 2,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: getVerticalSize(8),
                                width: getHorizontalSize(7),
                                margin: getMargin(
                                  top: 6,
                                  bottom: 6,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 3,
                                  top: 6,
                                  bottom: 4,
                                ),
                                child: Text(
                                  "2km",
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgSignal,
                                height: getVerticalSize(10),
                                width: getHorizontalSize(7),
                                margin: getMargin(
                                  left: 49,
                                  top: 5,
                                  bottom: 5,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 2,
                                ),
                                child: Text(
                                  " 250",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 1,
                                  top: 3,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "/day",
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: getPadding(
                    left: 110,
                    right: 110,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgClock,
                        height: getVerticalSize(14),
                        width: getHorizontalSize(16),
                        margin: getMargin(
                          left: 33,
                        ),
                      ),
                      SizedBox(height: getVerticalSize(73)),
                      Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgSignal,
                            height: getVerticalSize(10),
                            width: getHorizontalSize(7),
                            margin: getMargin(
                              top: 5,
                              bottom: 5,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 2,
                            ),
                            child: Text(
                              " 250",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 1,
                              top: 3,
                              bottom: 2,
                            ),
                            child: Text(
                              "/day",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: getPadding(
                    left: 2,
                    top: 3,
                    right: 2,
                    bottom: 3,
                  ),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder18,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getVerticalSize(112),
                        width: getHorizontalSize(120),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUnsplasheb26evysk,
                              height: getVerticalSize(107),
                              width: getHorizontalSize(120),
                              radius: BorderRadius.circular(
                                getHorizontalSize(18),
                              ),
                              alignment: Alignment.topCenter,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: getPadding(
                                  left: 8,
                                  top: 2,
                                  right: 8,
                                  bottom: 2,
                                ),
                                decoration: AppDecoration
                                    .outlineOnPrimaryContainer
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Text(
                                  "Tomatos",
                                  style: CustomTextStyles
                                      .labelSmallPoppinsOnPrimaryContainer,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: getVerticalSize(4)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Highest ",
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.poppinsGray800,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 32,
                            ),
                            child: Text(
                              "Lowest",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.poppinsGray800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getVerticalSize(4)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "54 Rs/kg",
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.poppinsYellow90001,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 19,
                            ),
                            child: Text(
                              "24 Rs/kg",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.poppinsTeal500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getVerticalSize(9)),
                    ],
                  ),
                ),
                Container(
                  padding: getPadding(
                    left: 2,
                    top: 3,
                    right: 2,
                    bottom: 3,
                  ),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder18,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getVerticalSize(112),
                        width: getHorizontalSize(120),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUnsplash0xvrbly73rw,
                              height: getVerticalSize(107),
                              width: getHorizontalSize(120),
                              radius: BorderRadius.circular(
                                getHorizontalSize(18),
                              ),
                              alignment: Alignment.topCenter,
                            ),
                            CustomOutlinedButton(
                              width: getHorizontalSize(79),
                              text: "Cabbage",
                              alignment: Alignment.bottomCenter,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: getVerticalSize(4)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Highest ",
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.poppinsGray800,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 32,
                            ),
                            child: Text(
                              "Lowest",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.poppinsGray800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getVerticalSize(4)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "54 Rs/kg",
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.poppinsYellow90001,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 19,
                            ),
                            child: Text(
                              "24 Rs/kg",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.poppinsTeal500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getVerticalSize(9)),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(222),
                  width: double.maxFinite,
                  padding: getPadding(
                    left: 14,
                    right: 14,
                  ),
                  // child: Stack(
                  //   alignment: Alignment.topCenter,
                  //   children: [
                  //     Align(
                  //       alignment: Alignment.center,
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Container(
                  //             padding: getPadding(
                  //               left: 10,
                  //               top: 7,
                  //               right: 10,
                  //               bottom: 7,
                  //             ),
                  //             decoration: AppDecoration.outlineBlack.copyWith(
                  //               borderRadius: BorderRadiusStyle.roundedBorder10,
                  //             ),
                  //             child: Column(
                  //               mainAxisSize: MainAxisSize.min,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 SizedBox(height: getVerticalSize(2)),
                  //                 CustomImageView(
                  //                   imagePath:
                  //                       ImageConstant.imgUnsplashbfr3jzgg94,
                  //                   height: getVerticalSize(148),
                  //                   width: getHorizontalSize(142),
                  //                   radius: BorderRadius.vertical(
                  //                     top: Radius.circular(
                  //                         getHorizontalSize(10)),
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: getVerticalSize(3)),
                  //                 Row(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: [
                  //                     Padding(
                  //                       padding: getPadding(
                  //                         bottom: 5,
                  //                       ),
                  //                       child: Column(
                  //                         crossAxisAlignment:
                  //                             CrossAxisAlignment.start,
                  //                         mainAxisAlignment:
                  //                             MainAxisAlignment.start,
                  //                         children: [
                  //                           Text(
                  //                             "Fruits",
                  //                             style: CustomTextStyles
                  //                                 .labelSmallGray60001,
                  //                           ),
                  //                           SizedBox(
                  //                               height: getVerticalSize(1)),
                  //                           Text(
                  //                             "Grapes",
                  //                             style: theme.textTheme.labelLarge,
                  //                           ),
                  //                           SizedBox(
                  //                               height: getVerticalSize(6)),
                  //                           Row(
                  //                             children: [
                  //                               CustomImageView(
                  //                                 svgPath:
                  //                                     ImageConstant.imgLocation,
                  //                                 height: getVerticalSize(8),
                  //                                 width: getHorizontalSize(7),
                  //                                 margin: getMargin(
                  //                                   bottom: 2,
                  //                                 ),
                  //                               ),
                  //                               Padding(
                  //                                 padding: getPadding(
                  //                                   left: 3,
                  //                                 ),
                  //                                 child: Text(
                  //                                   "2km",
                  //                                   style: theme
                  //                                       .textTheme.labelSmall,
                  //                                 ),
                  //                               ),
                  //                             ],
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                     Padding(
                  //                       padding: getPadding(
                  //                         left: 32,
                  //                         top: 4,
                  //                       ),
                  //                       child: Column(
                  //                         crossAxisAlignment:
                  //                             CrossAxisAlignment.end,
                  //                         mainAxisAlignment:
                  //                             MainAxisAlignment.start,
                  //                         children: [
                  //                           CustomImageView(
                  //                             svgPath:
                  //                                 ImageConstant.imgBookmark,
                  //                             height: getVerticalSize(15),
                  //                             width: getHorizontalSize(11),
                  //                           ),
                  //                           SizedBox(
                  //                               height: getVerticalSize(11)),
                  //                           Text(
                  //                             "Rs. 1500",
                  //                             textAlign: TextAlign.center,
                  //                             style:
                  //                                 CustomTextStyles.titleSmall15,
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //           Container(
                  //             margin: getMargin(
                  //               left: 14,
                  //             ),
                  //             padding: getPadding(
                  //               left: 10,
                  //               top: 6,
                  //               right: 10,
                  //               bottom: 6,
                  //             ),
                  //             decoration: AppDecoration.outlineBlack.copyWith(
                  //               borderRadius: BorderRadiusStyle.roundedBorder10,
                  //             ),
                  //             child: Column(
                  //               mainAxisSize: MainAxisSize.min,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 SizedBox(height: getVerticalSize(3)),
                  //                 CustomImageView(
                  //                   imagePath:
                  //                       ImageConstant.imgUnsplasham2t4yqslci,
                  //                   height: getVerticalSize(148),
                  //                   width: getHorizontalSize(142),
                  //                   radius: BorderRadius.vertical(
                  //                     top: Radius.circular(
                  //                         getHorizontalSize(10)),
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: getVerticalSize(4)),
                  //                 Row(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     SizedBox(
                  //                       height: getVerticalSize(29),
                  //                       width: getHorizontalSize(68),
                  //                       child: Stack(
                  //                         alignment: Alignment.topLeft,
                  //                         children: [
                  //                           Align(
                  //                             alignment: Alignment.bottomCenter,
                  //                             child: Text(
                  //                               "Soyabean",
                  //                               style:
                  //                                   theme.textTheme.labelLarge,
                  //                             ),
                  //                           ),
                  //                           Align(
                  //                             alignment: Alignment.topLeft,
                  //                             child: Text(
                  //                               "Grains",
                  //                               style: CustomTextStyles
                  //                                   .labelSmallGray60001,
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                     CustomImageView(
                  //                       svgPath: ImageConstant.imgBookmark,
                  //                       height: getVerticalSize(15),
                  //                       width: getHorizontalSize(11),
                  //                       margin: getMargin(
                  //                         left: 64,
                  //                         top: 4,
                  //                         bottom: 10,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(height: getVerticalSize(1)),
                  //                 Row(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     CustomImageView(
                  //                       svgPath: ImageConstant.imgLocation,
                  //                       height: getVerticalSize(8),
                  //                       width: getHorizontalSize(7),
                  //                       margin: getMargin(
                  //                         top: 7,
                  //                         bottom: 7,
                  //                       ),
                  //                     ),
                  //                     Padding(
                  //                       padding: getPadding(
                  //                         left: 3,
                  //                         top: 7,
                  //                         bottom: 5,
                  //                       ),
                  //                       child: Text(
                  //                         "23 Km",
                  //                         style: theme.textTheme.labelSmall,
                  //                       ),
                  //                     ),
                  //                     Padding(
                  //                       padding: getPadding(
                  //                         left: 50,
                  //                       ),
                  //                       child: Text(
                  //                         "Rs. 240",
                  //                         textAlign: TextAlign.right,
                  //                         style: CustomTextStyles.titleSmall15,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     Align(
                  //       alignment: Alignment.topCenter,
                  //       child: Container(
                  //         margin: getMargin(
                  //           left: 120,
                  //           top: 76,
                  //           right: 120,
                  //           bottom: 106,
                  //         ),
                  //         padding: getPadding(
                  //           left: 30,
                  //           top: 9,
                  //           right: 30,
                  //           bottom: 9,
                  //         ),
                  //         decoration: AppDecoration.fillYellow.copyWith(
                  //           borderRadius: BorderRadiusStyle.roundedBorder18,
                  //         ),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Container(
                  //               height: getSize(12),
                  //               width: getSize(12),
                  //               margin: getMargin(
                  //                 top: 4,
                  //                 bottom: 4,
                  //               ),
                  //               child: Stack(
                  //                 alignment: Alignment.center,
                  //                 children: [
                  //                   CustomImageView(
                  //                     svgPath: ImageConstant.imgLine185,
                  //                     height: getVerticalSize(12),
                  //                     width: getHorizontalSize(2),
                  //                     alignment: Alignment.center,
                  //                   ),
                  //                   CustomImageView(
                  //                     svgPath: ImageConstant.imgLine186,
                  //                     height: getVerticalSize(2),
                  //                     width: getHorizontalSize(12),
                  //                     alignment: Alignment.center,
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //             Padding(
                  //               padding: getPadding(
                  //                 left: 9,
                  //               ),
                  //               child: Text(
                  //                 "Sell",
                  //                 style: CustomTextStyles
                  //                     .titleSmallOnPrimaryContainer,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
