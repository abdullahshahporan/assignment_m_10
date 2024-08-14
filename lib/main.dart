
import 'package:flutter/material.dart';
void main()
{
  runApp(IntroApp());
}
class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Home(),
      title: 'Intro App',
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text('Hello, World!',
              style:TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ) ,
            ),
            SizedBox(height: 10,),
            Text('Welcome to Flutter!',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 10,),
            Image.asset('assets/image/flutter.png',width: 200,height: 200,),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text('Button Pressed!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              child: Text('Press Me'),
            )
          ],
        ),
      ),
    );
  }
}
