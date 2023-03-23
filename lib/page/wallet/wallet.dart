import 'package:flutter/material.dart';

class WalletBodyPage extends StatefulWidget {
  const WalletBodyPage({super.key});

  @override
  State<WalletBodyPage> createState() => _WalletBodyPageState();
}

class _WalletBodyPageState extends State<WalletBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Text('Wallet')],)
    );
  }
}