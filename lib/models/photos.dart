import 'package:flutter/material.dart';

class PhotosModel{
  String imgsrc;
  String PhotoName;


PhotosModel(
  {
    required this.PhotoName, required this.imgsrc
  }
); 

static PhotosModel fromAPI2App(Map<String,dynamic> photoMap){
  return PhotosModel(PhotoName: photoMap["photographer"], imgsrc: (photoMap["src"])["portrait"]);
}

}