import 'dart:convert';

import 'package:abhay_mvvm_p1/Json/Product/Json%20Place%20holder.dart';
import 'package:abhay_mvvm_p1/Json/Product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../Data.dart';

abstract class JsonplaceholderViewModel extends State<JsonPlacholder>{
  final baseUrl ="http://174.138.121.52:3009/v1/product/getAllProduct";
  late Future<List<Data>>groupofData;
  bool isLoading = false;
  int quantity = 0;


  Future <List<Data>> getProduct() async{
    changeLoading();
    var response = await http.get(Uri.parse('${baseUrl}'));
    if (response.statusCode == 200){
      var decodeJson = Product.fromJson(jsonDecode(response.body));
      var groupofData =decodeJson.data ;
      return groupofData;

    }else{
      throw Exception("Error found");

    }

  }
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });


  }
}
