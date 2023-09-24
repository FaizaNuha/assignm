import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: CounterScreen(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        //elevatedButtonTheme: ElevatedButtonThemeData(

        //)
      ),
    );
  }
}

//route

class CounterScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }

}
class CounterState extends State<CounterScreen>{
  int counter =1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Counter App",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 35,
            ),
          ),
          //titleSpacing: 90,
          centerTitle: true,
          toolbarHeight: 70,
          elevation: 70,
          toolbarOpacity: 1,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString()),
              ElevatedButton(onPressed: (){
                if(counter<5){
                  counter = counter+1;
                  print(counter);
                  setState(() {

                  });}
              }, child: Text("+",
              style: TextStyle(fontSize: 20),),),
              ElevatedButton(onPressed: (){
                if(counter>0){
                  counter = counter-1;
                  print(counter);
                  setState(() {

                  });}
              }, child: Text("-",
                style: TextStyle(fontSize: 20),
              ),)


            ],
          ),
        ));
  }

}