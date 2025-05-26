// ignore_for_file: deprecated_member_use, invalid_use_of_protected_member

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

      bottomNavigationBar: Container(
        height: 120,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border(
            top: BorderSide(color: Colors.grey.shade300, width: 2),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Price Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.sora().fontFamily,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "\$ 4.53",
                    style: TextStyle(
                      fontSize: 22,
                      color: AppColor.secondary,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.sora().fontFamily,
                    ),
                  ),
                ],
              ),
              // Button Section
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentView()),
                    );
                  },
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.sora().fontFamily,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              Container(
                margin: const EdgeInsets.only(top: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Caffe Mocha",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.sora().fontFamily,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ice/Hot",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                              fontFamily: GoogleFonts.sora().fontFamily,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xFFEDEDED,
                                  ).withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  "lib/assets/fast_delivery.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xFFEDEDED,
                                  ).withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  "lib/assets/quality_bean.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xFFEDEDED,
                                  ).withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  "lib/assets/extra_milk.png",
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.sora().fontFamily,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "(230)",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontFamily: GoogleFonts.sora().fontFamily,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Divider(
                      color: Colors.grey.withOpacity(0.8),
                      thickness: 1,
                      indent: 16,
                      endIndent: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.sora().fontFamily,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                          fontFamily: GoogleFonts.sora().fontFamily,
                        ),
                        children: [
                          const TextSpan(
                            text:
                                "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ",
                          ),
                          TextSpan(
                            text: "Read More",
                            style: TextStyle(
                              color: const Color(0xFFC67C4E),
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.sora().fontFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Size",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.sora().fontFamily,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: SizedBox(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(3, (index) {
                            return Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        controller.selectedSize == index
                                            ? AppColor.secondary
                                            : Colors.white,
                                  ),
                                  child: Text(
                                    ['Small', 'Medium', 'Large'][index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: GoogleFonts.sora().fontFamily,
                                      color:
                                          controller.selectedSize == index
                                              ? Colors.white
                                              : Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    controller.setState(() {
                                      controller.selectedSize = index;
                                    }); // agar UI terupdate
                                  },
                                ),
                                if (index != 2) const SizedBox(width: 16),
                              ],
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
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
