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
class CounterState extends State<CounterScreen> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Counter App",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
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
              Text(counter.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.normal),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    if (counter < 5) {
                      counter = counter + 1;
                      print(counter);
                      setState(() {});
                      if (counter >= 5) {
                        _showDialog();
                      };
                    }
                  }, child: Text("+",
                    style: TextStyle(fontSize: 30),),),
                  SizedBox(
                    width: 10
                  ),
                  ElevatedButton(onPressed: () {
                    if (counter > 0) {
                      counter = counter - 1;
                      print(counter);
                      setState(() {

                      });
                    }
                  }, child: Text("-",
                    style: TextStyle(fontSize: 30),
                  ),),
                ],
              )


            ],
          ),
        ));
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Button pressed $counter times"),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

}