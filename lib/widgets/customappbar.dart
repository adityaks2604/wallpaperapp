import 'package:flutter/material.dart';
class CustomAppbar extends StatefulWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      child: RichText( 
        
        text: TextSpan(children: [
          TextSpan(text: "Wallpapers",
        style: TextStyle(color: Color.fromRGBO(175, 86, 207, 1),
        fontSize: 28, fontWeight: FontWeight.bold
        )),
        TextSpan(text: " for You",
        style: TextStyle(color: Color.fromRGBO(231, 90, 25, 1)))
        ]),
      )
    );
  }
}