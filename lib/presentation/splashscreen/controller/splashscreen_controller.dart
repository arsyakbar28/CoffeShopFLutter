import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';

class SplashscreenController extends State<SplashscreenView> {
  static late SplashscreenController instance;
  late SplashscreenView view;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => OnBoardView()),
        );
      }
    });
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
