import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  Widget build(context, DetailController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
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
  State<DetailView> createState() => DetailController();
}
