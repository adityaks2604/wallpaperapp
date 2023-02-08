import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);


  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
   
  TextEditingController _searchbar=TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Container( 
      // height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(  
        color: Colors.black12,

        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField( 
              onChanged: (value) {
              
              setState(() {
                
              });
              }, 
              controller: _searchbar,
              decoration: InputDecoration(  
              hintText: "search your wallpaper",
                // icon: Icon(Icons.search),
                border: InputBorder.none
              ),
            ),
          ),
          Container(padding: EdgeInsets.all(10),
            child: InkWell( 
              onTap: () {
               setState(() {
                 
               }); // searchext=newvalue;
              },
              child: Icon(Icons.search)))
        ],
      ),
    );
  }
}