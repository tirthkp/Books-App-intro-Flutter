import 'package:books_app/utils/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 350,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/login.png',
                          ),
                        ),
                      ),
                      child: null,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                // Text(
                //   'Username',
                //   style: GoogleFonts.robotoMono(
                //     color: Colors.teal,
                //     fontWeight: FontWeight.bold,
                //     fontSize: 18,
                //   ),
                // ),
                const SizedBox(
                  height: 15,
                ),
                const TextField1(
                  name: 'Username',
                  preicon: Icons.people,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField1(
                  name: 'Password',
                  preicon: Icons.lock,
                  obscureText: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
