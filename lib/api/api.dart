

import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter_wallpaperapp1/models/photos.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
class ApiOperations{
   static List <PhotosModel> trendingWallpapers =[];
  static Future<List<PhotosModel>> getTrendingWallpapers() 
   async{

    
    await http.get(
        Uri.parse("https://api.pexels.com/v1/curated"),
        headers: {"Authorization" : "DfZq0m89s6nNdmIe7YWcGbUM7NOtw7UiPBuXje2xeYzTBReSURGtwVUk"}
    ).then((value){
      // print(value.body["photos"]["src"]);

      Map<String,dynamic> jsonData =jsonDecode(value.body);
      List photos= jsonData["photos"];
      photos.forEach((element) {
      //  Map<String, dynamic> src= element["src"];
      //  print(src["portrait"]);
      trendingWallpapers.add(PhotosModel.fromAPI2App(element));
      });
    }
     );
     return trendingWallpapers;
  }
}