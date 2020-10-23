import 'package:flutter/material.dart';
import 'package:game_app/shared/custom_field.dart';
import 'package:game_app/shared/rounded_button.dart';
import 'package:game_app/utils/constants.dart';

import 'login.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomField(
                        label: "Email",
                        iconData: Icons.mail_outline,
                      ),
                      CustomField(
                          label: "User Name", iconData: Icons.person_outline),
                      CustomField(
                        label: "Password",
                        iconData: Icons.remove_red_eye,
                      ),
                      CustomField(
                        label: "Date of birth",
                        iconData: Icons.cake,
                      ),
                    ],
                  ),
                ),
              ),
              RoundedButton(
                text: "I have an account",
                color: Colors.transparent,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (contex) => Login()),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              RoundedButton(
                text: "Log In",
                color: kPrimaryColor,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
