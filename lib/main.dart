import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

 void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
void getHTTP() async{
   try{
     var response= await Dio().get("https://jsonplaceholder.typicode.com/todos/1");
   print(response);
   }
   catch(e){
     print(e);
   }

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: TextButton(
        onPressed: () { 
             getHTTP();
       },
       child: const Text("get"),)),
    );
  }
}