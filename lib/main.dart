import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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


  @override
  Widget build(BuildContext context) {

    var arrColor=[Colors.pinkAccent,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.red,
      Colors.brown
    ];

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:

      Column(
        children:  [
          Container(
            height: 200,
            child: GridView.count(crossAxisCount: 3,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children:[
              Container(
                color: Colors.amber,

              ),

                Container(
                  color: arrColor[0],

                ),
              Container(
                color: arrColor[1],

              ),
              Container(
                color: arrColor[2],

              ),
              Container(
                color: arrColor[3],

              ),
              Container(
                color: arrColor[4],

              ),
              Container(
                color: arrColor[5],

              ),
              Container(
                color: arrColor[6],

              ),
              Container(
                color: arrColor[7],

              )
            ],),
          ),

          Container(
            height: 100,
          ),
      /*    Container(
            height: 200,
            child: GridView.extent(maxCrossAxisExtent: 100,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children: [
              Container(
                color: Colors.amber,

              ),

              Container(
                color: arrColor[0],

              ),
              Container(
                color: arrColor[1],

              ),
              Container(
                color: arrColor[2],

              ),
              Container(
                color: arrColor[3],

              ),
              Container(
                color: arrColor[4],

              ),
              Container(
                color: arrColor[5],

              ),
              Container(
                color: arrColor[6],

              ),
              Container(
                color: arrColor[7],

              )


            ],
            ),
          ) */ //GridView.extent
      ],
      )
    );
  }
}
