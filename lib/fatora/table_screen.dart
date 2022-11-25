import 'package:flutter/material.dart';
import 'package:res_tables/fatora/container_items_info.dart';

class TableScreen extends StatelessWidget {
   TableScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


  funMediaQuery(double num ) { 
   return MediaQuery.of(context).size.height*num; 
 } 

     TextStyle styleTextHeadings = TextStyle(
      color: Colors.black ,
      fontWeight: FontWeight.bold,
      fontSize: funMediaQuery(0.025)
    );

    return Scaffold(
      body:SafeArea(
        child: ListView(

          children: [
            Text('فاتورة مبيعات' ,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: funMediaQuery(0.04) ,
              fontWeight: FontWeight.bold
            ),
            ) ,


          SizedBox(
            height: funMediaQuery(0.1),
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 7
                ), itemBuilder:  (ctx, index) {
                  return Container(
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                      border:Border.all(color: Colors.black)
                    ),
                    child: Text( '0111111111111',
                    style: TextStyle(
                      color: Colors.blue
                    ),),
                  ) ;

            } , itemCount: 5),
          ),
            SizedBox(
              height: funMediaQuery(0.009),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('العميل: ' ,
                  style: styleTextHeadings
                ) ,
                Text('21-11-2022',style: styleTextHeadings,),
                Container(
                  padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text('10',style: styleTextHeadings,)),


              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('الكاشير:- ' ,
                  style: styleTextHeadings
                ) ,
                Text('07:11',style: styleTextHeadings,),
                Text('البائع:-',style: styleTextHeadings,),


              ],
            ),
            SizedBox(
              height: funMediaQuery(0.009),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: DataTable(
                border: TableBorder.all(color: Colors.black),
                decoration: const BoxDecoration(
                  // border:Border.all(color: Colors.black)
                ),
                  columns: [
                    DataColumn(label: Text('الاسم' ,
                      style: styleTextHeadings,
                    )),
                    DataColumn(label: Text('الكمية' ,  style: styleTextHeadings,)),
                    DataColumn(label: Text('السعر'  ,  style: styleTextHeadings, )  ) ,
                    DataColumn(label: Text('الاجمالي',  style: styleTextHeadings,)),
                  ] ,
                  rows:[
                    DataRow(cells: [
                      DataCell(Text('بيبسي',
                      style: styleTextHeadings,
                      ) ,
                      placeholder: true
                      ) ,
                      DataCell(Text('1.00')) ,
                      DataCell(Text('100.00')) ,
                      DataCell(Text('100.00')) ,
                    ] ),
                    DataRow(cells: [
                      DataCell(Text('بيبسي',
                      style: styleTextHeadings,
                      ) ,
                      placeholder: true
                      ) ,
                      DataCell(Text('1.00')) ,
                      DataCell(Text('100.00')) ,
                      DataCell(Text('100.00')) ,
                    ] ),
                  ]),
            ),
            SizedBox(
              height: funMediaQuery(0.015),
            ),


            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
              child:Column(

                children: [
                  ItemsInfoCustomContainer(txt1: 'عدد الاصناف', txt2: '2', style: styleTextHeadings,check: true),
                  ItemsInfoCustomContainer(txt1: 'اجمالي الكميات', txt2: '2', style: styleTextHeadings,check: true),
                  ItemsInfoCustomContainer(txt1: 'اجمالي الضريية', txt2: '2', style: styleTextHeadings,check: true,),
                  ItemsInfoCustomContainer(txt1: 'اجمالي الخصم', txt2: '2', style: styleTextHeadings,check: false,),
                ],
              ),
            ),
            SizedBox(
              height: funMediaQuery(0.015),
            ),

            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
              child:Column(

                children: [
                  ItemsInfoCustomContainer(txt1: 'اجمالي السعر', txt2: '2', style: styleTextHeadings,check: true),
                  ItemsInfoCustomContainer(txt1: 'المدفوع', txt2: '2', style: styleTextHeadings,check: false),

                ],
              ),
            ),




          ],
        ),
      )  ,

    );
  }
}
