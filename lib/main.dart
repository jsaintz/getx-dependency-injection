import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_injection/controller/user_controller.dart';
import 'package:getx_dependency_injection/pages/home_page.dart';

void main() {
  Get.lazyPut<UserController>(() => UserController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
