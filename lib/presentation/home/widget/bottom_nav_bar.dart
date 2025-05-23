import 'package:coffee_shop/core.dart';
import 'package:coffee_shop/utils/color_set.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final dynamic controller; // Replace 'dynamic' with your actual controller type

  const BottomNavBar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border(
          top: BorderSide(color: Colors.grey.shade300, width: 2),
        ),
      ),
      child: SizedBox(
        height: 100,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  controller.selectedNavBar == 0
                      ? Icons.home
                      : Icons.home_outlined,
                  size: 34,
                  color:
                      controller.selectedNavBar == 0
                          ? AppColor.secondary
                          : Colors.grey,
                ),
                onPressed: () {
                  controller.setSelectedNavBar(0);
                },
              ),
              IconButton(
                icon: Icon(
                  controller.selectedNavBar == 1
                      ? Icons.favorite
                      : Icons.favorite_outline,
                  size: 34,
                  color:
                      controller.selectedNavBar == 1
                          ? AppColor.secondary
                          : Colors.grey,
                ),
                onPressed: () {
                  controller.setSelectedNavBar(1);
                },
              ),
              IconButton(
                icon: Icon(
                  controller.selectedNavBar == 2
                      ? Icons.shopping_bag
                      : Icons.shopping_bag_outlined,
                  size: 34,
                  color:
                      controller.selectedNavBar == 2
                          ? AppColor.secondary
                          : Colors.grey,
                ),
                onPressed: () {
                  controller.setSelectedNavBar(2);
                },
              ),
              IconButton(
                icon: Icon(
                  controller.selectedNavBar == 3
                      ? Icons.notifications
                      : Icons.notifications_outlined,
                  size: 34,
                  color:
                      controller.selectedNavBar == 3
                          ? AppColor.secondary
                          : Colors.grey,
                ),
                onPressed: () {
                  controller.setSelectedNavBar(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
