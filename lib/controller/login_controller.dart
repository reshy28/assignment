import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// Test@123
// test45@yopmail.com

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool _isSubmitting = false.obs;

  RxString useremail = "".obs;
  RxString password = "".obs;

  bool get isSubmitting => _isSubmitting.value;

  Future<String> submitForm() async {
    if (_isSubmitting.value) return 'Submitting';

    _isSubmitting.value = true;

    try {
      final passwordSha256 =
          sha256.convert(utf8.encode(passwordController.text)).toString();
      print(passwordSha256);

      final response = await http.post(
        Uri.parse('https://apiv2stg.promilo.com/user/oauth/token'),
        body: {
          'username': emailController.text,
          'password': passwordSha256,
          'grant_type': 'password',
        },
        headers: {
          'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
        },
      );

      if (response.statusCode == 200) {
        print("Login successful >>>>>>>>>>>>>>>>>>>>>");
        return 'Login successful';
      } else {
        print("Login failed <<<<<<<<<<<<<<<<<<<<<");
        return 'Invalid ID Password';
      }
    } catch (e) {
      print("Error: $e");
      return 'Failed to connect to server';
    } finally {
      _isSubmitting.value = false;
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter correct email';
    } else {
      return null;
    }
  }

  String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    } else {
      return null;
    }
  }
}
