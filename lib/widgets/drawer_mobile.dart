import 'package:flutter/material.dart';

import '../constants/nav_items.dart';
class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
              child: IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon: Icon (Icons.close),),
            ),
          ),
          for(int i=0; i<navIcons.length; i++)
            ListTile(
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
