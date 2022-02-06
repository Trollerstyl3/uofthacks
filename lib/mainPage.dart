import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uofthacks/login.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  final controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SwoleMate')),
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
        Text("Coming Soon!"),
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

  FloatingActionButton buildLogin() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      label: Text("Google Sign In"),
    );
  }
}
