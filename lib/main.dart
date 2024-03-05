import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sawara_solutions_pvt_ltd/constants/colors/app_colors.dart';
import 'package:sawara_solutions_pvt_ltd/view/login/login_screen.dart';
import 'package:sawara_solutions_pvt_ltd/view/meetup/meetup_screen.dart';
import 'package:sawara_solutions_pvt_ltd/view/widgets/bottomnavigationbar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.blueColor,
        ),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
