import 'package:academix/Theme/themecolor.dart';
import 'package:academix/widgets/basescreen_widgets/changepassword_widget.dart';
import 'package:academix/widgets/basescreen_widgets/forgetpassword_widget.dart';
import 'package:academix/widgets/basescreen_widgets/login_widget.dart';
import 'package:academix/widgets/basescreen_widgets/otp_widget.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  bool _isLoginScreen = true;
  bool _isForgetPasswordScreen = false;
  bool _isOtpScreen = false;
  bool _isChangePasswordScreen = false;
  void _toggleScreen() {
    setState(() {
      _isLoginScreen = !_isLoginScreen;
      _isForgetPasswordScreen = false;
      _isOtpScreen = false;
    });
  }

  void _showForgetPasswordScreen() {
    setState(() {
      _isLoginScreen = false;
      _isForgetPasswordScreen = true;
      _isOtpScreen = false;
    });
  }

  void _showChangePasswordScreen() {
    setState(() {
      _isLoginScreen = false;
      _isForgetPasswordScreen = false;
      _isOtpScreen = false;
      _isChangePasswordScreen = true;
    });
  }
  void _backToForgetPasswordScreen() {
    setState(() {
      _isLoginScreen = false;
      _isForgetPasswordScreen = true;
      _isOtpScreen = false;
      _isChangePasswordScreen = false;
    });
  }

  void _showOtpScreen() {
    setState(() {
      _isLoginScreen = false;
      _isForgetPasswordScreen = false;
      _isOtpScreen = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight / 2,
                  color: Colors.white,
                ),
                Container(
                  height: screenHeight / 2,
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
                Container( height: screenHeight * .45,
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(   _isLoginScreen ? "Sign In" : "Forgot Password",

                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenHeight * .035,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: screenHeight / 2,
                  color: Colors.deepPurple,
                ),
                Container(
                    height: screenHeight / 2,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: _isLoginScreen

                        ? LoginWidget(onForgotPassword: _showForgetPasswordScreen)
                        : _isForgetPasswordScreen
                        ? ForgetpasswordWidget(
                      onBackToLogin: _toggleScreen,
                      onGenerateOtp: _showOtpScreen,
                    )
                        : _isOtpScreen
                        ? OtpWidget(
                      onCancel: _showForgetPasswordScreen,
                      onVerify: _showChangePasswordScreen
                    )
                        : ChangepasswordWidget(
                      onCancel: _backToForgetPasswordScreen,
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
