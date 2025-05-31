import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';

class PaymentController extends State<PaymentView> {
  static late PaymentController instance;
  late PaymentView view;

  bool get isDeliver => false;

  int selectedDelivery = 0;
  void setSelectedDelivery(int index) {
    setState(() {
      selectedDelivery = index;
    });
  }
  // Removed invalid 'ss' line

  int _detailOrderCount = 0;

  int get detailOrderCount => _detailOrderCount;

  set detailOrderCount(int value) {
    setState(() {
      _detailOrderCount = value;
    });
  }

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

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void setDeliveryMethod(bool bool) {}
}
