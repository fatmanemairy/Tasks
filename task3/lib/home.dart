import 'package:flutter/material.dart';
import 'package:t2/item_widget.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var itemname=["Facebook","A 10 NETWORKS","intel Crop","HP INC","Advanced Micro Devices inc","Apple inc","Amazon.com,inc","Microsoft"];
var price =["\$ 339.1","\$ 10.3","\$ 32.43","\$ 77.44","\$ 133.98","\$ 3505.44","\$ 256.51","\$ 339.1"];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,

        title:  SizedBox(height: 25,
        child:const Text("List View Builder",style: TextStyle(color:Colors.white,fontSize: 25)) ,
      ),
        
      ),
      body:ListView.builder(
        itemCount: itemname.length,
        physics:const BouncingScrollPhysics(),
        itemBuilder: (context, index) => ItemWidget(itemname: itemname[index],price:price[index],),



          ),
                
       
      );
      
    
  }
}
