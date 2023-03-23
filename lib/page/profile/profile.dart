import 'package:flutter/material.dart';

class ProfileBodyPage extends StatefulWidget {
  const ProfileBodyPage({super.key});

  @override
  State<ProfileBodyPage> createState() => _ProfileBodyPageState();
}

class _ProfileBodyPageState extends State<ProfileBodyPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Column(children: [Text('Profile')],)
    );
  }
}