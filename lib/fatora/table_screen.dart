import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:res_tables/fatora/container_items_info.dart';
import 'package:responsive_table/responsive_table.dart';

class TableScreen extends StatelessWidget {
   TableScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


  funMediaQuery(double num ) { 
   return MediaQuery.of(context).size.height*num; 
 }
  TableRow tableRow (List<String>  cells , {bool isHeader = false }  )  {
    return TableRow(
        children: cells.map((e)  {
          final style = TextStyle(
            fontWeight: isHeader?  FontWeight.bold : FontWeight.w500 ,
            fontSize: isHeader  ?  funMediaQuery(0.028): funMediaQuery(0.03)
          );
          return Padding(
            padding:  EdgeInsets.all(funMediaQuery(0.01)),
            child: Text(e ,style:style,textAlign: TextAlign.center,) ,
          );
        }).toList()
    );
  }


  TextStyle styleTextHeadings = TextStyle(
      color: Colors.black ,
      fontWeight: FontWeight.bold,
      fontSize: funMediaQuery(0.025) ,
    );

    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(funMediaQuery(0.03)),
          child: ListView(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('فاتورة مبيعات' ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: funMediaQuery(0.03) ,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text('10',style: styleTextHeadings,)),
                ],
              ) ,

SizedBox(height: funMediaQuery(0.03),) ,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
              Text('العميل:- عميل نقدي' ,
              style: styleTextHeadings,
              )  ,
                Text( '26-11-202' ,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
                )
              ],
            ),
              SizedBox(
                height: funMediaQuery(0.009),
              ),
               Table(
                 columnWidths:   {
                   0:FlexColumnWidth(0.5),
                   1:FlexColumnWidth(0.25),
                   2:FlexColumnWidth(0.25),
                   3:FlexColumnWidth(0.25),
                 },
                 border: TableBorder.all(),
                 children: [
                   tableRow([ 'الاسم', 'الكمية' ,'السعر','الاجمالي' ] ,isHeader: true) ,
                   tableRow([ 'بيبسي', '2' ,'6','6' ]),
                   tableRow([ 'بيبسي', '2' ,'6','6' ]),
                   tableRow([ 'بيبسي', '2' ,'6','6' ]),
                   tableRow([ 'بيبسي', '2' ,'6','6' ]),
                 ],
               ),
              SizedBox(
                height: funMediaQuery(0.03),
              ),

      Row(
          children: [
            Expanded(child: ItemsInfoCustomContainer(txt1: 'عدد الاصناف', style: styleTextHeadings,  txt2: '0',)),
            SizedBox(width: MediaQuery.of(context).size.width*0.01,),
            Expanded(child: ItemsInfoCustomContainer(txt1: 'اجمالي الكميات', style:styleTextHeadings ,txt2: '40')),
          ],
      ),
      Row(
          children: [
            Expanded(child: ItemsInfoCustomContainer(txt1: 'اجمالي الضريبة', style: styleTextHeadings,  txt2: '0',)),
            SizedBox(width: MediaQuery.of(context).size.width*0.01,),
            Expanded(child: ItemsInfoCustomContainer(txt1: 'اجمالي الخصم', style:styleTextHeadings ,txt2: '40')),
          ],
      ),
              SizedBox(height: funMediaQuery(0.05)),

              Row(
          children: [
            Expanded(child: ItemsInfoCustomContainer(txt1: 'اجمالي السعر', style: styleTextHeadings,  txt2: '1000',)),
            Expanded(child: ItemsInfoCustomContainer(txt1: 'المدفوع', style:styleTextHeadings ,txt2: '800')),
          ],
      ),
              SizedBox(height: funMediaQuery(0.05)),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
                ),
                alignment: Alignment.center,
                child:  const Text( 'تشرفنا بزيارتكم' ,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
                ),
                ),
              )


            ],
          ),
        ),
      )  ,

    );
    
  }



}
