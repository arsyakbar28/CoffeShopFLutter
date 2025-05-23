// ignore: unnecessary_import
import 'package:coffee_shop/utils/color_set.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';
import 'package:lottie/lottie.dart';

class SplashscreenView extends StatefulWidget {
  const SplashscreenView({super.key});

  Widget build(context, SplashscreenController controller) {
    controller.view = this;
    return Container(
      color: AppColor.primary,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              '/Users/jiot/Documents/project/coffee_shop/lib/assets/coffee.json',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 10),
            const Text(
              'Coffee Shop',
              style: TextStyle(
                color: AppColor.thirdy,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashscreenView> createState() => SplashscreenController();
}
