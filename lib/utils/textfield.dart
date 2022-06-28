import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextField1 extends StatelessWidget {
  final String name;
  final IconData preicon;
  final bool obscureText;

  const TextField1({
    Key? key,
    required this.name,
    required this.preicon,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      cursorColor: Colors.teal,
      cursorHeight: 25,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Colors.teal,
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Colors.teal,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Colors.teal,
          ),
        ),
        label: Text(
          name,
          style: GoogleFonts.robotoMono(
            color: Colors.teal,
          ),
        ),
        prefixIcon: Icon(
          preicon,
          color: Colors.teal,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
    );
  }
}
