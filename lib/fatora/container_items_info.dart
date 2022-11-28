import 'package:flutter/material.dart';

class ItemsInfoCustomContainer extends StatelessWidget {
  final String txt1 ;
  final TextStyle style ;
  final String txt2 ;
   const ItemsInfoCustomContainer({Key? key, required this.txt1, required this.style,required this.txt2
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Expanded(
          flex:5,
          child: Container(
            padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
              child: Text( txt1 ,maxLines: 1,overflow: TextOverflow.ellipsis, style: style,textAlign: TextAlign.center,)),
        ),
        Expanded(
          flex:3,

          child: Container(

              padding:  EdgeInsets.all( 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
              ),
              child: Text( txt2 , style: style,maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,)),
        ),
      ],
    ) ;
  }
}
