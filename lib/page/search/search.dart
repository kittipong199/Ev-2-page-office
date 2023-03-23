import 'package:firebase_project/controller/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchBodyPage extends StatefulWidget {
  const SearchBodyPage({super.key});

  @override
  State<SearchBodyPage> createState() => _SearchBodyPageState();
}

class _SearchBodyPageState extends State<SearchBodyPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (controller) {
      return Stack(
        children: [
          // Map
          GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(13.7563, 100.5018),
                zoom: 15,
              ),
              onMapCreated: (mapController) {
                // map Controller
                controller.mapController = mapController;
                controller.update();
              }),

          // SearchBox

          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 64.0, left: 20.0, right: 20.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade400, blurRadius: 6.0)
                    ]),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),

          // Result
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 64,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 201, 38, 92),
              child: TextButton(
                child: Text(
                  "Found 0 EV Station",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      );
    });
  }
}
