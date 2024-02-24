import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key,required this.itemname,required this.price});
final itemname,price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
              title: Text('$itemname',style: TextStyle(fontSize: 20),) ,

              leading: CircleAvatar(
                backgroundColor: Colors.blue,
               child: Text(
                itemname[0].toUpperCase(),
                style: TextStyle(color: Colors.white,fontSize: 10,fontWeight:FontWeight.bold),
               ),
              ),
              trailing: Text('$price',style: TextStyle(color: Colors.grey,fontSize: 15),),
            ),
        SizedBox(height: 10,)
            ,

        Container(
          width: 500,
          height: 1,
          decoration: BoxDecoration(color: Colors.black26),
        )

      ],
    );;
  }
}