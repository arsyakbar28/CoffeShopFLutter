// ignore_for_file: deprecated_member_use, invalid_use_of_protected_member

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:coffee_shop/core.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  Widget build(BuildContext context, HomeController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavBar(controller: controller),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF111111), Color(0xFF313131)],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Location Selector
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 10),
                      child: Column(
                        children: [
                          const Text(
                            "Location",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          DropdownButton<String>(
                            value: controller.selectedLocation ?? 'Surabaya',
                            dropdownColor: Colors.grey[900],
                            style: const TextStyle(color: Colors.white),
                            items:
                                <String>[
                                  'Surabaya',
                                  'Jakarta',
                                  'Bandung',
                                  'Bali',
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }).toList(),
                            onChanged: (value) {
                              controller.setLocation(value!);
                            },
                            underline: Container(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Search Bar
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 24,
                                    offset: Offset(4, 8),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextField(
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'Search coffee',
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xFF2A2A2A),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 24,
                                  offset: Offset(4, 8),
                                ),
                              ],
                              border: Border.all(
                                color: AppColor.primary,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.secondary,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.filter_list,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                log("Filter button pressed");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Banner Image
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: const DecorationImage(
                                image: AssetImage(
                                  '/Users/jiot/Documents/project/coffee_shop/lib/assets/Banner1.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 24,
                                  offset: Offset(4, 8),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 20, 90, 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    border: Border.all(
                                      color: Colors.red,

                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  child: Text(
                                    'Promo',
                                    style: TextStyle(
                                      fontFamily: GoogleFonts.sora().fontFamily,
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 8,
                                          color: Colors.black54,
                                          offset: Offset(2, 2),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Buy one get one FREE",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.sora().fontFamily,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 8,
                                        color: Colors.black54,
                                        offset: Offset(2, 2),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Category Menu Bar
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                ), // Ubah dari 20 ke 12 agar lebih dekat
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(4, (index) {
                            return Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        controller.selectedCategory == index
                                            ? AppColor.secondary
                                            : const Color(0xFFEDEDED),
                                  ),
                                  child: Text(
                                    [
                                      'All Coffee',
                                      'Machiato',
                                      'Latte',
                                      'Americano',
                                    ][index],
                                    style: TextStyle(
                                      color:
                                          controller.selectedCategory == index
                                              ? Colors.white
                                              : Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    controller.setState(() {
                                      controller.selectedCategory = index;
                                    }); // agar UI terupdate
                                  },
                                ),
                                if (index != 3) const SizedBox(width: 16),
                              ],
                            );
                          }),
                        ),
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.73,
                          ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        // Dummy data
                        final List<Map<String, dynamic>> items = [
                          {
                            'image': 'lib/assets/1.png',
                            'rating': 4.5,
                            'name': 'Caffe Mocha',
                            'detail': 'Deep Foam',
                            'price': 4.53,
                          },
                          {
                            'image': 'lib/assets/2.png',
                            'rating': 4.5,
                            'name': 'Cappuccino',
                            'detail': 'Espresso',
                            'price': 3.53,
                          },
                          {
                            'image':
                                '/Users/jiot/Documents/project/coffee_shop/lib/assets/3.png',
                            'rating': 4.5,
                            'name': 'Latte',
                            'detail': 'Creamy',
                            'price': 2.53,
                          },
                          {
                            'image': 'lib/assets/4.png',
                            'rating': 4.5,
                            'name': 'Americano',
                            'detail': 'Strong',
                            'price': 1.53,
                          },
                        ];

                        final item = items[index];
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 8,
                                offset: const Offset(4, 8),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(16),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(16),
                                      ),
                                      child: Image.asset(
                                        item['image'],
                                        height: 118,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 16,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              item['rating'].toString(),
                                              style: TextStyle(
                                                fontFamily:
                                                    GoogleFonts.sora()
                                                        .fontFamily,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['name'],
                                      style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.sora().fontFamily,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(height: 1),
                                    Text(
                                      item['detail'],
                                      style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.sora().fontFamily,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Text(
                                          '\$ ${item['price'].toString()}',
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.sora().fontFamily,
                                            color: AppColor.primary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                          ),
                                        ),
                                        const Spacer(),
                                        SizedBox(
                                          height: 36,
                                          width: 36,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (context) =>
                                                          const DetailView(),
                                                ),
                                              ); // Tambahkan aksi tambah ke keranjang di sini
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  AppColor.secondary,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Add more widgets here if needed
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
