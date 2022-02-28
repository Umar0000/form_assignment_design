import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_assignment_design/screens/sign_in_screen.dart';
import 'package:form_assignment_design/weight/header_sign_in_up.dart';

import '../weight/custom_btn.dart';
import '../weight/edit_text_field.dart';
import '../weight/registration_bottom_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF191720),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding:
              const EdgeInsets.only(right: 27, left: 27, top: 110, bottom: 59),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                  title1: "Let’s sign you up",
                  title2: "Welcome \nJoin the community!"),
              const SizedBox(
                height: 47,
              ),
              EditTextField(
                  hint: "Enter your Full Name",
                  textVisible: false,
                  getString: (s) {},
                  text: ""),
              EditTextField(
                  hint: "Enter your email address",
                  textVisible: false,
                  getString: (s) {},
                  text: ""),
              EditTextField(
                  hint: "Enter your password",
                  textVisible: true,
                  getString: (s) {},
                  text: ""),
              Spacer(),
              SignUpText(
                  title1: "Already have an account ? ",
                  title2: "Sign In",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SignINScreen()));
                  }),
              const SizedBox(
                height: 11,
              ),
              CustomeBtn(
                btnText: "Sign Up",
                btnClick: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SignINScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
