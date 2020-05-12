import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:getflutter/getflutter.dart';
import 'package:news/values/values.dart';
import 'package:news/widgets/input.dart';

// 登陆界面
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // logo
  Widget _buildLogo() {
    return Container(
      width: 110.w,
      margin: EdgeInsets.only(top: 88.h),
      child: Column(
        children: <Widget>[
          Container(
            height: 76.h,
            width: 76.w,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 76.w,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      borderRadius: BorderRadius.all(
                          Radius.circular(76 * 0.5.w)), // 父容器的50%
                    ),
                    child: Container(),
                  ),
                ),
                Positioned(
                  top: 13.w,
                  left: 20.w,
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h),
            child: Text(
              "SECTOR",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                fontSize: 24.sp,
                height: 1,
              ),
            ),
          ),
          Text(
            "news",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  // 登录表单
  Widget _buildInputForm() {
    return Container(
      margin: EdgeInsets.fromLTRB(40.w, 49.h, 40.w, 0),
      child: Column(
        children: <Widget>[
          inputText(
            controller: _email,
            keyboardType: TextInputType.emailAddress,
            hintText: "Email",
            marginTop: 0,
          ),
          inputText(
              controller: _password,
              keyboardType: TextInputType.emailAddress,
              hintText: "Password",
              marginTop: 15,
              isPassword: true),
          Container(
            height: 44.h,
            margin: EdgeInsets.only(top: 15.h),
            child: Row(
              children: <Widget>[
                Container(
                  width: 140.w,
                  height: 44.h,
                  child: GFButton(
                    onPressed: () {
                      BotToast.showText(text: _email.text.toString());
                      print(_email.text.toString());
                    },
                    text: "Sign up",
                    color: GFColors.DARK,
                  ),
                ),
                Spacer(),
                Container(
                  width: 140.w,
                  height: 44.h,
                  child: GFButton(
                    onPressed: () {
                      BotToast.showLoading(); //弹出一个加载动画
                      BotToast.cleanAll();
                    },
                    text: "Sign in",
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // 第三方登录
  Widget _buildThirdPartyLogin() {
    return Container();
  }

  // 注册按钮
  Widget _buildSignupButton() {
    return Container(
      margin: EdgeInsets.only(top: 250.h),
      width: 295.w,
      height: 44.h,
      child: GFButton(
        onPressed: () {},
        text: 'Sign up',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            _buildLogo(),
            _buildInputForm(),
//            Spacer(),
            _buildThirdPartyLogin(),
//            _buildSignupButton(),
          ],
        ));
  }
}
