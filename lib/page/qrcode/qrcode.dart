import 'package:flutter/material.dart';

class QrCodeBodyPage extends StatefulWidget {
  const QrCodeBodyPage({super.key});

  @override
  State<QrCodeBodyPage> createState() => _QrCodeBodyPageState();
}

class _QrCodeBodyPageState extends State<QrCodeBodyPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Column(children: [Text('QrCode')],)
    );
  }
}