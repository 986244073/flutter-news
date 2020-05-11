import 'package:flutter/material.dart';
import 'package:news/pages/welcome/welcome_page.dart';
import 'package:news/routes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/sign_in',
    title: 'news',
    home: WelcomePage(),
    debugShowCheckedModeBanner: false,
    routes: routes,
  ));
}
