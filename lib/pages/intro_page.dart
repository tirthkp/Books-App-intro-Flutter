import 'package:books_app/pages/page1.dart';
import 'package:books_app/pages/page2.dart';
import 'package:books_app/pages/page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _controller = PageController();
  late int pageChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  pageChanged = index;
                });
              },
              children: const [
                Page1(),
                Page2(),
                Page3(),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 250),
                child: SmoothPageIndicator(
                  onDotClicked: (index) {
                    _controller.animateToPage(index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease);
                  },
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                    dotColor: Colors.white30,
                    activeDotColor: Colors.white,
                    dotHeight: 5,
                    dotWidth: 25,
                    type: WormType.thin,
                    spacing: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 33, 255, 203),
                  blurRadius: 15,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.teal,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
