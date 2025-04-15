import 'package:ecommerce_flutter_app/containers/dashboard_text.dart';
import 'package:ecommerce_flutter_app/containers/home_button.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Home"),),
      body:  Column(
        children: [
          Container(
            height: 235,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10),),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardText(
                  keyword: "Total Products",
                  value: "100",
                ), DashboardText(
                  keyword: "Total Products",
                  value: "100",
                ), DashboardText(
                  keyword: "Total Products",
                  value: "100",
                ), DashboardText(
                  keyword: "Total Products",
                  value: "100",
                ), DashboardText(
                  keyword: "Total Products",
                  value: "100",
                ),
              ],
            ),
          ),
           Row(
            children: [
              HomeButton(
                onTap: (){},
                name: "All Orders",
              ),  HomeButton(
                onTap: (){},
                name: "All Products",
              ),
            ],
          ),
          Row(
            children: [
              HomeButton(
                onTap: (){},
                name: "Promos",
              ),  HomeButton(
                onTap: (){},
                name: "Banners",
              ),
            ],
          ),
          Row(
            children: [
              HomeButton(
                onTap: (){},
                name: "Categories",
              ),  HomeButton(
                onTap: (){},
                name: "Coupons",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
