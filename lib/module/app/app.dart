import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fly_plout/module/collection/page.dart';
import 'package:flutter_fly_plout/module/home/page.dart';
import 'package:flutter_fly_plout/module/login/page.dart';
import 'package:flutter_fly_plout/module/mine/page.dart';
import 'package:flutter_fly_plout/module/splash/page.dart';
import 'package:flutter_fly_plout/module/video/page.dart';

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'splash_page':SplashPage(),
      'home_page':HomePage(),
      'mine_page':MinePage(),
      'video_page':VideoPage(),
      'collection_page':CollectionPage(),
      'login_page':LoginPage(),

    },
  );

  return MaterialApp(
    title: '多彩',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),

    home: routes.buildPage('splash_page', null),  //把他作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}