import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Books For Everyone',
                style: GoogleFonts.robotoMono(
                  letterSpacing: 2,
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Millions of books ',
                  style: GoogleFonts.robotoMono(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'are available',
                  style: GoogleFonts.robotoMono(
                    color: Colors.white70,
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                'for free of cost ',
                style: GoogleFonts.robotoMono(
                  color: Colors.white70,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Whichever in the field you are',
              style: GoogleFonts.robotoMono(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            Text(
              'you will get all kinds of books',
              style: GoogleFonts.robotoMono(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'images/2.png',
              height: 470,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
    );
  }
}
