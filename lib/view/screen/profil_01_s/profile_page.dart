import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40,) ,
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/user.jpeg'),
              ),
              const SizedBox(height: 6),
              const Text(
                'Yahia samir',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Yahia_samir_developer@gmail.com',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20,) ,
              itemProfile1(
                  'Edit Profil', '', CupertinoIcons.profile_circled,Icon(Icons.arrow_forward, color: Colors.grey.shade400),),
              //const SizedBox(height: 10),
              const SizedBox(height: 10,) ,
              itemProfile1(
                  'Titles', '', CupertinoIcons.profile_circled,Icon(Icons.arrow_forward, color: Colors.grey.shade400),),
              const SizedBox(height: 10,) ,
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'General Sitting',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 10,) ,
           //  Row(children: [ itemProfile('Language', '', CupertinoIcons.location),] ),
              itemProfile2('Mode', 'Dark & Light', CupertinoIcons.phone,Switch(value: true, onChanged: (value) {})),
           
              const SizedBox(height: 10,) ,
            //  itemProfile('Language', '', CupertinoIcons.location),
              itemProfile1('Language', '', CupertinoIcons.location,Icon(Icons.arrow_forward, color: Colors.grey.shade400),),
              
              // const SizedBox(height: 10),
              const SizedBox(height: 10,) ,
              itemProfile1('About', '', CupertinoIcons.mail,Icon(Icons.arrow_forward, color: Colors.grey.shade400),),
              const SizedBox(height: 10,) ,
              itemProfile1('Terms & Conditions', '', CupertinoIcons.location,Icon(Icons.arrow_forward, color: Colors.grey.shade400),),
              const SizedBox(height: 10,) ,
              itemProfile1('Privacy Policy', '', CupertinoIcons.location,Icon(Icons.arrow_forward, color: Colors.grey.shade400),),
              const SizedBox(height: 10,) ,
              itemProfile1('Rate This App', '', CupertinoIcons.location,Icon(Icons.arrow_forward, color: Colors.grey.shade400),),
              const SizedBox(height: 10,) ,
              itemProfile1('Share This app', '', CupertinoIcons.location,Icon(Icons.arrow_forward, color: Colors.grey.shade400),),

              const SizedBox(height: 20,) ,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      //   AppRoutes.routeTo(context, page)
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Text('Edit Profile')),
              )
            ],
          ),
        ),
      ),
    );
  }

  /* itemProfile(String title, String subtitle, IconData iconData, /*  { Widget Widget}  */ ) {
    return Container(
      margin: 8.hEdge,
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
      //  Widget : Switch(value: true, onChanged: (value) {}) ,
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  } */

   itemProfile1(String title, String subtitle, IconData iconData, Widget icon) {
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
        title: Text(title ),
       // subtitle: Text(subtitle,),
        leading: Icon(iconData),
        trailing: icon  ,
        tileColor: Colors.white,
      ),
    );
  }

  itemProfile2(String title, String subtitle, IconData iconData, Widget icon) {
    return Container(
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
        title: Text(title ),
        subtitle: Text(subtitle,),
        leading: Icon(iconData),
        trailing: icon  ,
        tileColor: Colors.white,
      ),
    );
  }

}
