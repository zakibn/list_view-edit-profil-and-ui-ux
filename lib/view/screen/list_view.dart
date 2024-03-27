import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../widget/item.dart';

class ListViewZ extends StatelessWidget {
  const ListViewZ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 5, 5, 5),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 5, 5) ,
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return item(
                id: data[index].id,
                title: data[index].title,
                image: data[index].image);
          },
        ),
      ),
    );
  }
}
