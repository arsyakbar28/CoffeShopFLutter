import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  Widget build(context, PaymentController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        actions: const [],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }

  @override
  State<PaymentView> createState() => PaymentController();
}
