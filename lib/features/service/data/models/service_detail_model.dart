import 'dart:io';

import 'package:hive/hive.dart';

part 'service_detail_model.g.dart';

@HiveType(typeId: 0)
class ServiceDetailModel extends HiveObject {
  @HiveField(0)
  File selectedImages;
  @HiveField(1)
  String formDescription;
  @HiveField(2)
  String date;
  @HiveField(3)
  String time;
  @HiveField(4)
  String address;

  ServiceDetailModel({required this.selectedImages, required this.formDescription, required this.address, required this.time, required this.date});



}
