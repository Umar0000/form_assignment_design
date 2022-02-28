import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeBtn extends StatelessWidget {
  final String btnText;
  final GestureTapCallback btnClick;

  CustomeBtn({required this.btnText, required this.btnClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: btnClick,
      child: Expanded(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Text(
            btnText,
            style: TextStyle(
                color: const Color(0xFF191720),
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
        ),
      ),
    );
  }
}
