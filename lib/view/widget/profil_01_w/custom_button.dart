import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            //   AppRoutes.routeTo(context, page)
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
          ),
          child: const Text('Edit Profile')),
    );
  }
}
