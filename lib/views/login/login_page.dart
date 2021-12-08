import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_note_book/data/src/colors.dart';
import 'package:my_note_book/data/src/images.dart';
import 'package:my_note_book/data/src/strings.dart';
import 'package:my_note_book/views/login/login_controller.dart';
import 'package:my_note_book/views/register/register_page.dart';

class LoginPage extends GetWidget<LoginController> {
  static const String routeName = '/views/login/login_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(loginAppBarText),
          ],
        ),
        backgroundColor: mainColor,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSpace(),
            _buildImage(),
            _buildMaxSpace(),
            _buildUsernameTextField(),
            _buildSpace(),
            _buildPasswordTextField(),
            _buildMaxSpace(),
            _buildButton(),
            _buildSpace(),
            _buildRegisterText(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      githubLogo,
      height: Get.height * .3,
    );
  }

  Widget _buildUsernameTextField() {
    return Material(
      color: white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(300),
        topLeft: Radius.circular(10),
      )),
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 2, 8, 2),
        child: TextField(
          obscureText: true,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: usernameText,
          ),
          controller: controller.usernameController,
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return Material(
      color: white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(300),
        bottomRight: Radius.circular(10),
      )),
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 2, 8, 2),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: passwordText,
          ),
          controller: controller.passwordController,
        ),
      ),
    );
  }

  Widget _buildButton() {
    final double size = 40;
    return SizedBox(
      height: size,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(loginButton),
        style: ElevatedButton.styleFrom(
          primary: mainColor,
        ),
      ),
    );
  }

  Widget _buildSpace() {
    return SizedBox(
      height: 20,
    );
  }

  Widget _buildMaxSpace() {
    return SizedBox(
      height: 40,
    );
  }

  Widget _buildRegisterText() {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(text: registerQuestionText, style: TextStyle(color: black)),
          TextSpan(
              text: registerButtonText,
              style: TextStyle(
                color: black,
                fontStyle: FontStyle.italic,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.offNamed(RegisterPage.routeName);
                }),
        ]));
  }
}
