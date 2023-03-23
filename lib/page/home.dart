import 'package:firebase_project/controller/app_controller.dart';
import 'package:firebase_project/page/notification/notification.dart';
import 'package:firebase_project/page/profile/profile.dart';
import 'package:firebase_project/page/qrcode/qrcode.dart';
import 'package:firebase_project/page/search/search.dart';
import 'package:firebase_project/page/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.navIndex.value,
            children: [
              SearchBodyPage(),

              WalletBodyPage(),

              QrCodeBodyPage(),

              NotificationPage(),
              
              ProfileBodyPage(),
            ],
          ),

          // boutom navigration

          bottomNavigationBar: BottomNavigationBar(
            // เวลาเลือก จะเป็นสีนี้
            selectedItemColor: Colors.blueGrey,
            //เวลาไม่เลือกจะเป็นสีนี้
            unselectedItemColor: Colors.amber,
            //
            showSelectedLabels: false,
            //
            showUnselectedLabels: false,
            currentIndex: controller.navIndex.value,
            onTap: (value) {
              controller.navIndex.value = value;
              controller.update();
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: 'Wallet'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.qr_code_2), label: 'Qr_code_2'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notification_add), label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: 'profile'),
            ],
          ),
        );
      },
    );
  }
}
