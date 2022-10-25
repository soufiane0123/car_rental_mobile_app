// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class CarModel extends Equatable {
  final String brandname;
  final String type;
  final String price;
  const CarModel({
    required this.brandname,
    required this.type,
    required this.price,
  });

  @override
  List<Object> get props => [brandname,type,price];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brandname': brandname,
      'type': type,
      'price': price,
    };
  }

  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
      brandname: map['brandname'] as String,
      type: map['type'] as String,
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarModel.fromJson(String source) => CarModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
