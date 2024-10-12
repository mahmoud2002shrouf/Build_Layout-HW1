import 'package:build_layout/model/model.dart';
import 'package:flutter/material.dart';

final List<ServiceModel> serviseData = [
  ServiceModel(Icons.location_on, "Address", "lorm lorm lorm lorm lorm",
      Colors.purple.shade300),
  ServiceModel(
      Icons.lock, "Privacy", "lorm lorm lorm lorm lorm", Colors.pink.shade300),
  ServiceModel(Icons.all_inbox_sharp, "General", "lorm lorm lorm lorm lorm",
      const Color.fromARGB(255, 131, 130, 127)),
  ServiceModel(Icons.notifications, "Notifications", "lorm lorm lorm lorm lorm",
      Colors.deepOrange.shade400),
  ServiceModel(Icons.phone, "Conect us", "lorm lorm lorm lorm lorm",
      Colors.tealAccent.shade400),
];
final List<WorkModel> WorkData = [
  WorkModel(Icons.wallet, "Wallets"),
  WorkModel(Icons.delivery_dining_sharp, "Delivery"),
  WorkModel(Icons.message, "Message", subTitle: "2"),
  WorkModel(Icons.monetization_on, "Service"),
];
final UserModel userDataModel =
    UserModel("Mahmoud Shrouf", "assets/image/user.png", "Mobile Devs", [
  OtherData("846", "Collect"),
  OtherData("51", "Attention"),
  OtherData("267", "Track"),
  OtherData("39", "Coupons")
]);
