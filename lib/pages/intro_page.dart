import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatelessWidget {
  final _controller = PageController();
  IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'OUR',
                      style: GoogleFonts.robotoMono(
                        letterSpacing: 2,
                        decoration: TextDecoration.lineThrough,
                        fontSize: 20,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'YOUR BOOKS',
                      style: GoogleFonts.robotoMono(
                        letterSpacing: 2,
                        fontSize: 20,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Become the best ',
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'in your',
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
                  'industry,One class at a time ',
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
                'Learn new professions from the',
                style: GoogleFonts.robotoMono(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
              Text(
                'comfort of your home or anywhere',
                style: GoogleFonts.robotoMono(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const WormEffect(
                  dotColor: Colors.white30,
                  activeDotColor: Colors.white,
                  dotHeight: 10,
                  dotWidth: 10,
                  type: WormType.thin,
                ),
              ),
              Image.asset(
                'images/1.png',
                height: 470,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.blue[600],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
