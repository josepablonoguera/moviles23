import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter_application_leccion2/list_simple.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListaSimple(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage();

  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var sizeWindow = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola Mundo"),
        actions: [
          
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.red,
            ),
            onPressed: () => null,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            CircularProfileAvatar(
                    ''
                    ,child: FlutterLogo(),
                    borderColor: Colors.purpleAccent,
                    borderWidth: 5,
                    elevation: 2,
                    radius: 50,
                  ),
            SizedBox(height: 80,),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text("Opcion 1"),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children:[
           Column(
            children: [
              SizedBox(height: sizeWindow.width*0.05,),
                Container(
                width: sizeWindow.width*0.80,
                height: sizeWindow.height*0.10,
                color: Colors.blue,
              ),
              Container(
                width: sizeWindow.width*0.80,
                height: sizeWindow.height*0.40,
                color: Colors.brown.shade300,
              ),
              Container(
                width: sizeWindow.width*0.80,
                height: sizeWindow.height*0.10,
                color: Colors.blue,
              ),
            ],
          ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        autofocus: false,
        child: Icon(Icons.add),
        onPressed:() {
                  
                } ,
      ),
    );
  }
}
