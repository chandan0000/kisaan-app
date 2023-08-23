import 'package:asignment/core/app_export.dart';
import 'package:asignment/presentation/rent_display_page/rent_display_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RentDisplayTabContainerPage extends StatefulWidget {
  const RentDisplayTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  RentDisplayTabContainerPageState createState() =>
      RentDisplayTabContainerPageState();
}

class RentDisplayTabContainerPageState
    extends State<RentDisplayTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  late TabController rentController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
    rentController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(1342),
                width: double.maxFinite,
                margin: getMargin(
                  bottom: 176,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: getPadding(
                          top: 239,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                right: 16,
                              ),
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
                                  Container(
                                    height: getVerticalSize(148),
                                    width: getHorizontalSize(144),
                                    margin: getMargin(
                                      left: 4,
                                      top: 1,
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
                                          imagePath: ImageConstant
                                              .imgUnsplashhaxsyxd9yg8,
                                          height: getVerticalSize(148),
                                          width: getHorizontalSize(144),
                                          radius: BorderRadius.vertical(
                                            top: Radius.circular(
                                                getHorizontalSize(10)),
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 4,
                                    ),
                                    child: Text(
                                      "Equipment",
                                      style:
                                          CustomTextStyles.labelSmallGray60001,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 3,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Strawreeper",
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                              SizedBox(
                                                  height: getVerticalSize(6)),
                                              Row(
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocation,
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
                                                      style: theme
                                                          .textTheme.labelSmall,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgSignal,
                                          height: getVerticalSize(10),
                                          width: getHorizontalSize(7),
                                          margin: getMargin(
                                            left: 1,
                                            top: 24,
                                            bottom: 5,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                            top: 19,
                                          ),
                                          child: Text(
                                            " 250",
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 1,
                                            top: 22,
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
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: getPadding(
                                  top: 206,
                                  right: 23,
                                  bottom: 206,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                        padding: getPadding(
                          left: 36,
                          right: 36,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 5,
                                bottom: 19,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: getHorizontalSize(21),
                                    child: Divider(),
                                  ),
                                  SizedBox(height: getVerticalSize(5)),
                                  SizedBox(
                                    width: getHorizontalSize(21),
                                    child: Divider(),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 71,
                                bottom: 16,
                              ),
                              child: Text(
                                "Krishi Bazaar",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: getVerticalSize(39),
                      width: getHorizontalSize(301),
                      margin: getMargin(
                        top: 42,
                        right: 16,
                      ),
                      child: TabBar(
                        controller: tabviewController,
                        isScrollable: true,
                        labelColor:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        unselectedLabelColor: appTheme.gray800,
                        tabs: [
                          Tab(
                            child: Text(
                              "All",
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Buy",
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Rent",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(60),
                      width: getHorizontalSize(320),
                      margin: getMargin(
                        left: 21,
                        top: 159,
                      ),
                      child: TabBar(
                        controller: rentController,
                        isScrollable: true,
                        labelColor: appTheme.gray10002,
                        unselectedLabelColor: appTheme.gray80001,
                        tabs: [
                          Tab(
                            child: Text(
                              "All Items",
                            ),
                          ),
                          Tab(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgCar,
                                  height: getVerticalSize(21),
                                  width: getHorizontalSize(35),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Text(
                                    "Transport",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgMail,
                                  height: getVerticalSize(26),
                                  width: getHorizontalSize(28),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                  ),
                                  child: Text(
                                    "Storage",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgLock,
                                  height: getVerticalSize(22),
                                  width: getHorizontalSize(26),
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                  ),
                                  child: Text(
                                    "Equipment",
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
              // Expanded(
              //   child: Container(
              //     margin: getMargin(
              //       top: 81,
              //     ),
              //     height: getVerticalSize(1299),
              //     child: TabBarView(
              //       controller: tabviewController,
              //       children: [
              //         RentDisplayPage(),
              //         RentDisplayPage(),
              //         RentDisplayPage(),
              //         RentDisplayPage(),
              //         RentDisplayPage(),
              //         RentDisplayPage(),
              //         RentDisplayPage(),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
