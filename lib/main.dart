import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final controller =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
            ),
            RaisedButton(
              child: Text("Proses Soal 1"),
              onPressed: (){
                proses1();
              },
            ),
            RaisedButton(
              child: Text("Proses Soal 2"),
              onPressed: (){
                proses2();
              },
            ),
            RaisedButton(
              child: Text("Proses Soal 3"),
              onPressed: (){
                proses3();
              },
            )
          ],
        ),
      )
    );
  }
  proses1(){
    debugPrint("Input = "+controller.text);
    for(int i=1; i<=int.parse(controller.text);i++){
      if(i%15==0){
        debugPrint(i.toString() +" Fish bash");
      }else if(i%5==0){
        debugPrint(i.toString() +" bash");
      }else if(i%3==0){
        debugPrint(i.toString() +" Fish");
      }else{
        debugPrint(i.toString());
      }
    }
  }

  proses2(){
    var array=[4,1,3,5,8,-2];
    debugPrint("input ="+array.toString());
    for(var i=0; i<array.length; i++){
      for(var j=i+1; j< array.length;j++){
        if(array[i]> array[j]){
          int temp= array[i];
          array[i] = array[j];
          array[j]= temp;
        }
      }
    }
    debugPrint("Min To Maks="+array.toString());

    for(var i=0; i<array.length; i++){
      for(var j=i+1; j< array.length;j++){
        if(array[i]< array[j]){
          int temp= array[i];
          array[i] = array[j];
          array[j]= temp;
        }
      }
    }
    debugPrint("Maks To Min="+array.toString());

  }

  proses3(){
    debugPrint("Input = "+controller.text);
    String reverse="";
    for(int i=controller.text.length-1; i>=0; i--){
      reverse = reverse+controller.text[i];
    }
    if(controller.text.toString()==reverse){
      debugPrint("Input True");
    }else{
      debugPrint("Input False");
    }
  }


}
