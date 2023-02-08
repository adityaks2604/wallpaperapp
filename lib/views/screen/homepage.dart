import 'package:flutter/material.dart';
import 'package:flutter_wallpaperapp1/api/api.dart';
import 'package:flutter_wallpaperapp1/models/photos.dart';
import 'package:flutter_wallpaperapp1/widgets/customappbar.dart';
import 'package:flutter_wallpaperapp1/widgets/searchbar.dart';
 import 'dart:js_util';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  late List<PhotosModel> trendingWallList;
  

  GetTrendingWallpapers() async{

    trendingWallList = await ApiOperations.getTrendingWallpapers();
    setState(() {
      
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetTrendingWallpapers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar( 
        title: CustomAppbar(),
        elevation: 0,
        backgroundColor: Colors.transparent,
       ), 
       body: SingleChildScrollView(
         child: Column(children: [
          Container(
            child: SearchBar(),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.all(10), 
            // padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(physics: BouncingScrollPhysics(),scrollDirection: Axis.vertical,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15),
              itemCount: trendingWallList.length,
              itemBuilder: ((context,index)=>
              Container(
                // margin: EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                // image: Image.network(),
                color: Colors.black26,),
                 height: 500,
                 width: 50,
                 child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                   child: Image.network(trendingWallList[index].imgsrc,
                   fit: BoxFit.cover,),
                 ),
          
              )),
              ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 20,
          )
          
          
         ]),
       ),
    );
  }
}
