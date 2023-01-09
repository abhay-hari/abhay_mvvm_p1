import 'package:abhay_mvvm_p1/Json/Product/Json%20place%20holder%20View.dart';
import 'package:flutter/material.dart';
import 'Details place holder view.dart';

class Detailsplaceholder extends StatefulWidget {
  var image;
  var id;
  var name;
  var brand;
  var price;
  var description;

  Detailsplaceholder({
    required this.id,
    required this.image,
    required this.name,
    required this.brand,
    required this.price,
    required this.description
  });
  @override
  DetailsPlaceholderView createState() => DetailsPlaceholderView(
    id: '${id}',
    image: '${image}',
    name: '${name}',
    brand: '${brand}',
    price: '${price}',
    description: '${description}',
  );
}

