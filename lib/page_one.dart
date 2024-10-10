import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/app_routes.dart';
import 'package:flutter_web/page_two.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Page One Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => 
        //Get.to(PageTwo()),
       Get.rootDelegate.toNamed(AppRoutes.pageTwo),
          //  AppRouter.instance.navigateTo(context, AppRoutes.home),
          //Get.to(PageTwo()),
          // Routes.router.navigateTo(context, "/pageTwo",),
          // Navigator.of(context).pushNamed('/pageTwo'),
          //context.push('/pageTwo'),
          child: const Text('Go to the Page Two screen'),
        ),
      ),
    );
  }
}