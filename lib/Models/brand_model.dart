// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'car_model.dart';


class BrandsModel extends Equatable {
  final String imagepath;
  final String brandname;
  final List<CarModel> cars;
  const BrandsModel({
    required this.imagepath,
    required this.brandname,
    required this.cars,
  });
  
  @override
  List<Object> get props => [imagepath, brandname,cars];
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagepath': imagepath,
      'brandname': brandname,
      'cars': cars.map((x) => x.toMap()).toList(),
    };
  }

  factory BrandsModel.fromMap(Map<String, dynamic> map) {
    return BrandsModel(
      imagepath: map['imagepath'] as String,
      brandname: map['brandname'] as String,
      cars: List<CarModel>.from((map['cars'] as List<int>).map<CarModel>((x) => CarModel.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory BrandsModel.fromJson(String source) => BrandsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<BrandsModel> brands = [
  const BrandsModel(brandname: "BMW" , imagepath: "assets/images/bmw-logo.png",cars:[
    CarModel(brandname: "BMW", type: "X5", price: "14.99"),
    CarModel(brandname: "BMW", type: "X7", price: "14.99"),
    CarModel(brandname: "BMW", type: "M2", price: "14.99"),
  ]),
  const BrandsModel(brandname: "tesla" , imagepath: "assets/images/tesla-logo.png",cars:[
    CarModel(brandname: "tesla", type: "T5", price: "14.99"),
    CarModel(brandname: "tesla", type: "T7", price: "14.99"),
    CarModel(brandname: "tesla", type: "T2", price: "14.99"),
  ]),
  const BrandsModel(brandname: "porsche" , imagepath: "assets/images/ferrari-logo.png",cars:[]),
  const BrandsModel(brandname: "Mercedes-Benz" , imagepath: "assets/images/mercedes-benz-logo.png",cars:[]),
  const BrandsModel(brandname: "Ford" , imagepath: "assets/images/ford-logo.png",cars:[]),
  const BrandsModel(brandname: "Toyota" , imagepath: "assets/images/toyota-logo.png",cars:[]),
];
//