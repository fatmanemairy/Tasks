import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class items{
  String item;
  String img;
  items({required this.item,required this.img});

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  List<items>i=[
    items(item:"Fashion", img:"assets/Fashion.jpg"),
    items(item:"Beauty",img:"assets/beauty.jpeg"),
    items(item:"Toys",img:"assets/Toys.jpg"),
    items(item:"Furniture",img:"assets/furn.jpg"),
    items(item:"kitchen",img:"assets/kitchen.jpg"),

    items(item:"Food",img:"assets/food.jpg")

  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
        body: ListView.separated(
            itemCount: i.length,
            physics:const BouncingScrollPhysics(),
            itemBuilder:(context, index) {
              return Card(
                child:ListTile(
                    leading:
                        Image.asset(i[index].img),

                    title: Text(i[index].item),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),

              );
            },
            separatorBuilder:(context, index) =>const Divider(color: Colors.black,thickness: .1,indent: 20,endIndent: 20,)
        ),








       /* child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Msp',style: TextStyle(color:Colors.orange,fontSize: 25),),
            SizedBox(width: 5.0),

            Text('Asu',style: TextStyle(color:Colors.greenAccent,fontSize: 25)),
            SizedBox(width: 5.0),
            Text('Flutter',style: TextStyle(color:Colors.blue,fontSize: 25)),
            SizedBox(width: 5.0),
            Text('Commitee',style: TextStyle(color:Colors.blueAccent,fontSize: 25)),

          ],
        ),*/




    );
  }
}
