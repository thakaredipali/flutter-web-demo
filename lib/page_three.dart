import 'package:flutter/material.dart';
import 'package:flutter_web/app_routes.dart';
import 'package:flutter_web/page_four.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';
import 'dart:html' as html;

class PageThree extends StatefulWidget {
   PageThree({super.key,this.param});

  String? param;

  @override
  State<PageThree> createState() => _PageThreeState();
}




class _PageThreeState extends State<PageThree> {
   
   String? tempName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tempName = "Temporory Name";
    widget.param = Get.rootDelegate.arguments();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Three Screen')),
      body: Center(
        child: Column(
          children: [
            Text(widget.param??''),
            ElevatedButton(
              onPressed: () =>  Get.rootDelegate.toNamed(AppRoutes.pageFour),
              //Navigator.of(context).pushNamed('/pageFour'),
              // context.push('/pageFour'),
              child: const Text('Go to the Page Four screen'),
            ),

             ElevatedButton(
              onPressed: () {html.window.history.back();},
    
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}