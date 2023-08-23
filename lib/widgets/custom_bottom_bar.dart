import 'package:asignment/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavhome,
      activeIcon: ImageConstant.imgNavhome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavmystation,
      activeIcon: ImageConstant.imgNavmystation,
      title: "My Station",
      type: BottomBarEnum.Mystation,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavkrishibazaar,
      activeIcon: ImageConstant.imgNavkrishibazaar,
      title: "Krishi Bazaar",
      type: BottomBarEnum.Krishibazaar,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavmyfarm,
      activeIcon: ImageConstant.imgNavmyfarm,
      title: "My farm",
      type: BottomBarEnum.Myfarm,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavkrishigyan,
      activeIcon: ImageConstant.imgNavkrishigyan,
      title: "Krishi Gyan",
      type: BottomBarEnum.Krishigyan,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: getHorizontalSize(373),
          child: Divider(),
        ),
        Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.05),
                spreadRadius: getHorizontalSize(2),
                blurRadius: getHorizontalSize(2),
                offset: Offset(
                  0,
                  -0.99,
                ),
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              return BottomNavigationBarItem(
                icon: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: bottomMenuList[index].icon,
                      height: getSize(23),
                      width: getSize(23),
                      color: appTheme.gray500,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.labelMediumGray500.copyWith(
                          color: appTheme.gray500,
                        ),
                      ),
                    ),
                  ],
                ),
                activeIcon: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: bottomMenuList[index].activeIcon,
                      height: getSize(23),
                      width: getSize(23),
                      color: appTheme.yellow90001,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.labelMediumGray500.copyWith(
                          color: appTheme.gray500,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              );
            }),
            onTap: (index) {
              selectedIndex = index;
              widget.onChanged?.call(bottomMenuList[index].type);
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Home,
  Mystation,
  Krishibazaar,
  Myfarm,
  Krishigyan,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
