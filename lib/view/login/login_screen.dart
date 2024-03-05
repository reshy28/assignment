import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sawara_solutions_pvt_ltd/constants/colors/app_colors.dart';
import 'package:sawara_solutions_pvt_ltd/constants/sizedboxes/app_sizedboxes.dart';
import 'package:sawara_solutions_pvt_ltd/constants/textstyles/app_text_styles.dart';
import 'package:sawara_solutions_pvt_ltd/controller/login_controller.dart';
import 'package:sawara_solutions_pvt_ltd/view/widgets/bottomnavigationbar_view.dart';
import 'package:sawara_solutions_pvt_ltd/view/widgets/textfromfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final loginController = Get.put(LoginController());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Promilo",
          overflow: TextOverflow.ellipsis,
          style:
              AppTextStyles.boldText(fontSize: 24, color: AppColors.blackColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppSizedBoxes.sizedboxH20,
                Text(
                  "Hi, Welcome Back!",
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.boldText(
                    fontSize: 28,
                    color: AppColors.blackColor,
                  ),
                ),
                AppSizedBoxes.sizedboxH90,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Please Sign in to continue",
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text(
                          fontSize: 20,
                          color: AppColors.darkBlueColor,
                        ),
                      ),
                    ),
                  ],
                ),
                TextFormFieldWidget(
                  onchange: (p0) {
                    loginController.useremail.value = p0!;
                    return null;
                  },
                  hintText: "Enter Email or Mob No",
                  obscureText: false,
                  // autoFocus: false,
                  controller: loginController.emailController,
                  validator: loginController.emailValidation,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Sign In With OTP",
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.text(
                            fontSize: 20,
                            color: AppColors.darkBlueColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // AppSizedBoxes.sizedboxH30,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Password",
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text(
                          fontSize: 20,
                          color: AppColors.darkBlueColor,
                        ),
                      ),
                    ),
                  ],
                ),
                TextFormFieldWidget(
                  onchange: (p0) {
                    loginController.password.value = p0!;
                    return null;
                  },
                  hintText: "Enter Password",
                  obscureText: true,
                  // autoFocus: false,
                  controller: loginController.passwordController,
                  validator: loginController.passwordValidation,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text(
                      "Remember Me",
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.text(
                        fontSize: 18,
                        color: AppColors.greyColor,
                      ),
                    ),
                  const SizedBox(
                      width: 18,
                    ),
                    // const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forget Password",
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text(
                          fontSize: 18,
                          color: AppColors.darkBlueColor,
                        ),
                      ),
                    ),
                  ],
                ),
                AppSizedBoxes.sizedboxH40,

                Obx(
                  () => InkWell(
                    onTap: () {
                      if (formKey.currentState?.validate() ?? false) {
                        if (loginController.emailController.text.isNotEmpty &&
                            loginController
                                .passwordController.text.isNotEmpty) {
                          loginController.submitForm().then((response) {
                            if (response == 'Login successful') {
                              Get.offAll(() => const BottomnavigationbarView());
                            }
                          });
                        }
                      } else {
                        Get.snackbar(
                          'Error',
                          'Please fill in both email and password fields correctly',
                          backgroundColor: Colors.red,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: AppColors.blueColor, width: 3.0),

                            // ignore: unrelated_type_equality_checks
                            color: loginController.useremail == "" ||
                                    // ignore: unrelated_type_equality_checks
                                    loginController.password == ""
                                ? AppColors.redColor
                                : AppColors.loghtGreyColor),
                        child: Center(
                            child: Text(
                          'Submit',
                          style: AppTextStyles.boldText(
                            color: AppColors.whiteColor,
                            fontSize: 18,
                          ),
                        )),
                      ),
                    ),
                  ),
                ),

                AppSizedBoxes.sizedboxH20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: AppColors.loghtGreyColor,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "or",
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: AppColors.loghtGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSizedBoxes.sizedboxH30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/google-color-svgrepo-com.svg',
                      width: 40,
                      height: 40,
                    ),
                    AppSizedBoxes.sizedboxW10,
                    SvgPicture.asset(
                      'assets/images/linkedin-svgrepo-com.svg',
                      width: 52,
                      height: 52,
                    ),
                    AppSizedBoxes.sizedboxW10,
                    SvgPicture.asset(
                      'assets/images/facebook-social-media-svgrepo-com.svg',
                      width: 40,
                      height: 40,
                    ),
                    AppSizedBoxes.sizedboxW10,
                    SvgPicture.asset(
                      'assets/images/instagram-1-svgrepo-com.svg',
                      width: 46,
                      height: 46,
                    ),
                    AppSizedBoxes.sizedboxW10,
                    SvgPicture.asset(
                      'assets/images/whatsapp-icon-logo-svgrepo-com.svg',
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                AppSizedBoxes.sizedboxH40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Business User?",
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.text(
                        color: AppColors.greyColor,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Don't have an account",
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.text(
                        color: AppColors.greyColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                AppSizedBoxes.sizedboxH5,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "Login Here",
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text(
                          color: AppColors.blueColor,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Sign Up",
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text(
                          color: AppColors.blueColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSizedBoxes.sizedboxH40,
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "By continuing, you agree to \n promilo's ",
                        style: AppTextStyles.text(
                          color: AppColors.greyColor,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                              text: "Terms of Use & Privacy Policy.",
                              style: AppTextStyles.text(
                                color: AppColors.blackColor,
                                fontSize: 16,
                              )),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
