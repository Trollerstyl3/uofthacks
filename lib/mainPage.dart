import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uofthacks/login.dart';
import 'package:get/get.dart';


class Login extends StatelessWidget {
  final controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      foregroundColor: const Color(0xFFA63821),
      backgroundColor: const Color(0xFFFFFFFF),
      elevation: 0,),
      body: Center(
        child: Obx(() {
          if (controller.googleAccount.value == null) {
            return buildLogin();
          } else {
            return buildLogout();
          }
        }),
      ),
    );
  }

  Column buildLogout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Coming Soon!",
        style: TextStyle(fontSize: 25)),
        SizedBox(height: 15,),
        ActionChip(
            label: Text("Logout"),
            onPressed: () {
              controller.logout();
            },
            avatar: Icon(
              Icons.logout,
            ))
      ],
    );
  }

  Column buildLogin() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack( 
            children: [new Image.asset('assets/images/logo.png', height: 200, width: 800,),]
            ,
            alignment: Alignment.center,
          ),
          Text("SWOLEMATE",
          style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400)),
          SizedBox(height: 15,),
          FloatingActionButton.extended(
            onPressed: () {
              controller.login();
            },
            label: Text("Google Sign In"),
            backgroundColor: const Color(0xFFA63821),
            foregroundColor: const Color(0xFFFFF8E5),
          )
        ],
      );
    }
}
