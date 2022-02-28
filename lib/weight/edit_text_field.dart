import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditTextField extends StatefulWidget {
  final String hint;
  bool textVisible;
  ValueChanged<String> getString;
  String text;
  EditTextField(
      {required this.hint,
      required this.textVisible,
      required this.getString,
      required this.text});

  @override
  State<EditTextField> createState() => _EditTextFieldState();
}

class _EditTextFieldState extends State<EditTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.value = TextEditingValue(text: widget.text);
  }

  bool _textVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xFF1E1C24),
          border: Border.all(color: Color(0xff5D5D67), width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        controller: _controller,
        onChanged: widget.getString,
        obscureText: widget.textVisible ? !_textVisible : _textVisible,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        decoration: InputDecoration(
            suffixIcon: widget.textVisible
                ? IconButton(
                    color: Colors.white,
                    icon: Icon(
                        _textVisible ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _textVisible = !_textVisible;
                      });
                    },
                  )
                : null,
            border: InputBorder.none,
            hintText: widget.hint,
            hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15)),
      ),
    );
  }
}
