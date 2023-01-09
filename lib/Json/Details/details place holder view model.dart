import 'package:flutter/cupertino.dart';
import 'detailsPalceholder.dart';

abstract class DetailsViewModel extends State<Detailsplaceholder>{
  DetailsViewModel({
    required this.id,
    required this.image,
    required this.name,
    required this.brand,
    required this.price,
    required this.description
  });
  int quantity = 0;

  late String id;
  late String image;
  late String name;
  late String brand;
  late String price;
  late String description;

  void Increasing() {
    setState(() {
      quantity++;
    });
  }
  void Decreasing(){
    setState(() {
      quantity--;
    });


    }

}