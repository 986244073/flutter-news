import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:news/pages/welcome/welcome_page.dart';
import 'package:news/routes.dart';

final botToastBuilder = BotToastInit(); //1.调用BotToastInit

void main() {
  runApp(MaterialApp(
    initialRoute: '/sign_in',
    title: 'news',
    builder: (context, child) {
      child = botToastBuilder(context, child);
      return child;
    },
    navigatorObservers: [BotToastNavigatorObserver()], //2.注册路由观察者
    home: WelcomePage(),
    debugShowCheckedModeBanner: false,
    routes: routes,
  ));
}
