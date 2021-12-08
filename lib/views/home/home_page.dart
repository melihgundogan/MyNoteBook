import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_note_book/views/home/home_controller.dart';

class HomePage extends GetWidget<HomeController> {
  static const String routeName = '/views/home/home_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Home Page'),
          ),
        ),
    );
  }
}