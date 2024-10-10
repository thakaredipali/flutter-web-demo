import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:universal_html/html.dart' as html;

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour>  {

  bool condition = true;


/*@override
  void initState() {
    html.window.addEventListener('beforeunload', (event) {
      if (condition) {
        event.preventDefault();
        return 'Are you sure you want to leave?';
      }
      return null;
    });
    super.initState();
  }  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Four Screen')),
      body: Center(
        child: 
         Text('Go to the Details screen'),
        
      ),
    );
  }
}