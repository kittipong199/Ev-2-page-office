import 'package:firebase_project/controller/app_controller.dart';
import 'package:get/get.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
