import 'package:flutter/material.dart';

class ServiceModel {
  final IconData icon;
  final String title;
  final String subTitle;
  final Color color;
  ServiceModel(this.icon, this.title, this.subTitle, this.color);
}

class WorkModel {
  final IconData icon;
  final String title;
  final String? subTitle;
  WorkModel(this.icon, this.title, {this.subTitle});
}
class UserModel{
  final String name;
  final String image;
  final String job;
  final List<OtherData> data;
  UserModel(this.name,this.image,this.job,this.data);



}
class OtherData{
  final String title;
  final String num;
  OtherData(this.num,this.title);
}