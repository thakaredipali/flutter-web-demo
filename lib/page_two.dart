import 'package:flutter/material.dart';
import 'package:flutter_web/app_routes.dart';
import 'package:flutter_web/page_four.dart';
import 'package:flutter_web/page_three.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Two Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>  Get.rootDelegate.toNamed(AppRoutes.pageThree, arguments:"Hello world"),
    
          //Navigator.of(context).pushNamed('/pageThree', arguments: 'hello world'),
          //context.push('/pageThree',extra: "Object Hello"),
          child: const Text('Go to the Page Three screen'),
        ),
      ),
    );
  }
}