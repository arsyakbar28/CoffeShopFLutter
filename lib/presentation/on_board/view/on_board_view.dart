import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  Widget build(context, OnBoardController controller) {
    controller.view = this;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                '/Users/jiot/Documents/project/coffee_shop/lib/assets/background1.png',
              ),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 600, left: 24, right: 24),
            child: Column(
              // spacing: 10, // Column does not have a 'spacing' parameter; consider using SizedBox for spacing between children
              children: [
                Text(
                  "Fall in Love with Coffee in Blissful Delight!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: GoogleFonts.sora().fontFamily,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black54,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: GoogleFonts.sora().fontFamily,
                    fontWeight: FontWeight.w100,
                    decoration: TextDecoration.none,
                    // ignore: deprecated_member_use
                    color: AppColor.fourt.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeView(),
                        ),
                      );
                    },
                    color: AppColor.secondary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: GoogleFonts.sora().fontFamily,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  State<OnBoardView> createState() => OnBoardController();
}
