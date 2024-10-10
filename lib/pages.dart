
import 'package:flutter_web/app_routes.dart';
import 'package:flutter_web/page_four.dart';
import 'package:flutter_web/page_one.dart';
import 'package:flutter_web/page_three.dart';
import 'package:flutter_web/page_two.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppPages {
  static final pages = [
     GetPage(
      name: AppRoutes.pageOne,
      page: () => PageOne(),
    ),
  
      GetPage(
      name: AppRoutes.pageTwo,
      page: () => PageTwo(),
    ),
   
    GetPage(
      name: AppRoutes.pageThree,
      page: () => PageThree(),
    ),
       GetPage(
      name: AppRoutes.pageFour,
      page: () => PageFour(),
    ),
  ];
}