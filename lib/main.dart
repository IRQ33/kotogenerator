import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyPage createState() => MyPage();
}

void changeurl() {
  url = 'google.com';
}

String url = 'https://cataas.com/cat';

class MyPage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Cat generator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              url,
              width: 300,
              height: 300,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => setState(() {
                      url =
                          'https://cataas.com/cat?' + DateTime.now().toString();
                      ;
                    }),
                child: Text("Załaduj ponownie")),
          ],
        ),
      ),
    );
  }
}
