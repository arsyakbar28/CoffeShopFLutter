import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccesView extends StatefulWidget {
  const SuccesView({super.key});

  Widget build(context, SuccesController controller) {
    controller.view = this;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 100,
            ),
            const SizedBox(height: 24),
            Text(
              "Order Successful!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.sora().fontFamily,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Thank you for your order. Your coffee is being prepared.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: GoogleFonts.sora().fontFamily,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeView()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.secondary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                shadowColor: Colors.black12,
              ),
              child: Text(
                "Back to Home",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.sora().fontFamily,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SuccesView> createState() => SuccesController();
}
