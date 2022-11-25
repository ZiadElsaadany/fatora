import 'package:flutter/material.dart';

class ItemsInfoCustomContainer extends StatelessWidget {
  final String txt1 ;
  final String txt2 ;
  final TextStyle style ;
  final bool check ;
   const ItemsInfoCustomContainer({Key? key, required this.txt1, required this.txt2, required this.style,
     required this.check
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Column(
      children: [
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [

            Text( txt1 , style: style,) ,

            Text( txt2, style: style, ),

          ],

        ),
       if (check == true) const Divider(
          color: Colors.black,
          thickness: 1,
        )
      ],
    );
  }
}
