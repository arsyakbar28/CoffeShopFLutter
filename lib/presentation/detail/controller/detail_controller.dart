import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';

class DetailController extends State<DetailView> {
  static late DetailController instance;
  late DetailView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  int selectedSize = 0;
  void setSelectedSize(int index) {
    setState(() {
      selectedSize = index;
    });
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
