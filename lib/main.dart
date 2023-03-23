import 'package:firebase_project/binding/root_binding.dart';
import 'package:firebase_project/page/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ev Station',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      initialBinding: RootBinding(),
      home: const HomePage(),
    );
  }
}

