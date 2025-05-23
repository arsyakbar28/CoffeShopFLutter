import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';

class HomeController extends State<HomeView> {
  static late HomeController instance;
  late HomeView view;

  String? selectedLocation;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  int selectedNavBar = 0;
  int selectedCategory = 0;

  void setSelectedLocation(String location) {
    setState(() {
      selectedLocation = location;
    });
  }

  void setSelectedNavBar(int index) {
    setState(() {
      selectedNavBar = index;
    });
  }

  void setSelectedCategory(int index) {
    setState(() {
      selectedCategory = index;
    });
  }

  void setLocation(String location) {
    setSelectedLocation(location);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
