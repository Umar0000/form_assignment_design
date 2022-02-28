import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_assignment_design/screens/jobs_lisiting.dart';
import 'package:form_assignment_design/weight/header_sign_in_up.dart';

import '../weight/custom_btn.dart';
import '../weight/edit_text_field.dart';
import '../weight/registration_bottom_text.dart';

class SignINScreen extends StatelessWidget {
  const SignINScreen({Key? key}) : super(key: key);

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
                  title1: "Let’s sign you in",
                  title2: "Welcome back \nyou’ve been missed !"),
              const SizedBox(
                height: 47,
              ),
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
              const SizedBox(
                height: 147,
              ),
              SignUpText(
                title1: "Don’t have an account ? ",
                title2: "Register ",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              CustomeBtn(
                btnText: "Sign In",
                btnClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JobListing()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
