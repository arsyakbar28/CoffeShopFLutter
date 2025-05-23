import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  Widget build(context, DetailController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 24.0),
            onPressed: () {
              Navigator.of(context).maybePop();
            },
          ),
        ),
        title: Text(
          "Detail",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.sora().fontFamily,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(
              icon: const Icon(Icons.favorite_outline, size: 24.0),
              onPressed: () {},
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                      offset: Offset(4, 8),
                    ),
                  ],
                ),

                child: Image.asset(
                  "lib/assets/detail_banner.png",
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                // color: Colors.red,
                // padding: const EdgeInsets.all(20.0),
                // child: Image.asset(
                //   "/Users/jiot/Documents/project/coffee_shop/lib/assets/detail_banner.png",
                //   width: 120.0,
                //   height: 120.0,
                //   fit: BoxFit.fill,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DetailView> createState() => DetailController();
}
