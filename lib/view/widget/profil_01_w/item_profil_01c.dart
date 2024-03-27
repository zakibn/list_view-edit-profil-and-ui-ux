import 'package:flutter/material.dart';

class ItemProfil01C extends StatelessWidget {
  // const ItemProfil01({super.key});
  final String title;
  final String subtitle;
  final  IconData iconData;
  final Icon icon;

  const ItemProfil01C(this.title, this.subtitle, this.iconData, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 7),
      //  constraints : BoxConstraints(maxHeight: ),
      height: 68,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: const Color.fromARGB(255, 87, 83, 82).withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
         subtitle: Text(subtitle,),
        leading: Icon(iconData),
        trailing: icon,
        tileColor: Colors.white,
      ),
    );
  }
}
