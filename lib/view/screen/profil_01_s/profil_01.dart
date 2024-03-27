import 'package:flutter/material.dart';

class ProfilOne extends StatelessWidget {
  const ProfilOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'الملف الشخصي',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(padding: EdgeInsets.all(20),) ,
    );
  }
}