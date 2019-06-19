import 'dart:async';
import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "package:intl/intl_browser.dart";

import 'package:intl/intl.dart';

void main () async{
  List _date = await getJson();
  List _features = await getJson();
  String _body = '';

//  for (int i = 0; i <_date.length; i++){
//    debugPrint('Nome: ${_date[i]['features']}');
//
//  }

  for (int i = 0; i <_features.length; i++){
    debugPrint('Nome: ${_features[i]['features']}');

  }
}


Future<List> getJson () async{
  String url = "https://earthquake.usgs.gov/earthquakes/eventpage/nn00688049";

  http.Response response = await http.get(url);
  //status code == 200  OK
  if (response.statusCode == 200){
    return json.decode(response.body);
  }else {
    throw Exception('Fail');
  }
}