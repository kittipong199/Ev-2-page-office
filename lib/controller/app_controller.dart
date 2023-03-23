import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'dart:developer';

class AppController extends GetxController {
  RxInt navIndex = 0.obs;

  late GoogleMapController mapController;
}
