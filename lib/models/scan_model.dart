import 'dart:convert';
import 'package:meta/meta.dart';

class ScanModel {
  ScanModel({
    required this.id,
    required this.type,
    required this.value,
  }) {
    if (type.contains('http')) {
      type = 'http';
    } else {
      type = 'geo';
    }
  }

  int id;
  String type;
  String value;

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        type: json["type"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "value": value,
      };
}
