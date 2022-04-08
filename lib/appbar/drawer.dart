// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nalanda_university/appbar/about.dart';

import 'Student_detail.dart';
import '../massage/Massanger_home.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "Ashutosh Chaurasia",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  accountEmail: Text(
                    "ashdwkwi@gmail.com",
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/user.png",
                    ),
                  ),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.person, color: Colors.black),
              title: Text(
                'Student Detail',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()));
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
              title: Text(
                'Chat with Faculty',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MassangerHome()));
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.share, color: Colors.black),
              title: Text(
                'Share and Feedback',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            // ListTile(
            //   leading: Icon(CupertinoIcons.settings, color: Colors.black),
            //   title: Text(
            //     'Setting',
            //     textScaleFactor: 1.2,
            //     style: TextStyle(
            //       color: Colors.black,
            //     ),
            //   ),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => SettingsPage()));
            //   },
            // ),
            ListTile(
              leading: Icon(CupertinoIcons.info, color: Colors.black),
              title: Text(
                'About us',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
