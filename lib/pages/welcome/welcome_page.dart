import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/values/values.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

Widget _pageHeadTitle() {
  return Container(
      margin: EdgeInsets.only(top: 65.h),
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Montserrat",
            fontSize: 24.sp,
            fontWeight: FontWeight.w600),
      ));
}

Widget _pageHeadInfo() {
  return Container(
      width: 242.w,
      height: 70.h,
      margin: EdgeInsets.only(top: 14.h),
      child: Text(
        "The Best of news channels all in one place",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Avenir",
            fontSize: 16.sp,
            fontWeight: FontWeight.normal,
            height: 1.3),
      ));
}

/// 特性说明
/// 宽度 80 + 20 + 195 = 295
Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
  return Container(
    width: 295.w,
    height: 80.h,
    margin: EdgeInsets.only(top: marginTop.h),
    child: Row(
      children: [
        Container(
          width: 80.w,
          height: 80.h,
          child: Image.asset(
            "assets/images/$imageName.png",
            fit: BoxFit.none,
          ),
        ),
        Spacer(),
        Container(
          width: 195.w,
          child: Text(
            intro,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              fontSize: 16.sp,
            ),
          ),
        ),
      ],
    ),
  );
}

/// 开始按钮
Widget _buildStartButton() {
  return Container(
    width: 295.w,
    height: 44.h,
    margin: EdgeInsets.only(bottom: 20.h),
    child: FlatButton(
      onPressed: () {
//        Navigator.of().pushNamed('sign_up');
      },
      color: AppColors.primaryElement,
      textColor: AppColors.primaryElementText,
      child: Text("Get started"),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.w))),
    ),
  );
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 375, height: 812 - 44 - 34, allowFontScaling: true);
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _pageHeadTitle(),
            _pageHeadInfo(),
            _buildFeatureItem(
              "feature-1",
              "Compelling photography and typography provide a beautiful reading",
              40,
            ),
            _buildFeatureItem(
              "feature-2",
              "Sector news never shares your personal data with advertisers or publishers",
              40,
            ),
            _buildFeatureItem(
              "feature-3",
              "You can get Premium to unlock hundreds of publications",
              40,
            ),
            Spacer(),
            _buildStartButton()
          ],
        ),
      ),
    );
  }
}
