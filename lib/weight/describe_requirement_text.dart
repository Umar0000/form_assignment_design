import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescribeEditText extends StatefulWidget {
  final String hint;
  final String text;
  ValueChanged<String> getString;
  DescribeEditText(
      {required this.hint, required this.getString, required this.text});

  @override
  State<DescribeEditText> createState() => _DescribeEditTextState();
}

class _DescribeEditTextState extends State<DescribeEditText> {
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.value = TextEditingValue(text: widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      padding: EdgeInsets.all(15),
      width: double.infinity,
      height: 374,
      decoration: BoxDecoration(
          color: const Color(0xFF1E1C24),
          border: Border.all(color: Color(0xff5D5D67), width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        controller: _controller,
        onChanged: widget.getString,
        style: TextStyle(
          color: Colors.white,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        decoration: InputDecoration(
            hintMaxLines: 10,
            border: InputBorder.none,
            hintText: widget.hint,
            hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15)),
      ),
    );
  }
}
