import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'So what are you waiting for?',
              style: GoogleFonts.robotoMono(
                fontSize: 20,
                color: Colors.white70,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Join us today!',
            style: GoogleFonts.robotoMono(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              'Make your skills more accurate',
              style: GoogleFonts.robotoMono(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 25,
          // ),
          Text(
            'and grow in the industry',
            style: GoogleFonts.robotoMono(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),

          Image.asset(
            'images/3.png',
            height: 450,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
