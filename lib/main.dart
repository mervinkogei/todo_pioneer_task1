import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_pioneer_task1/Screens/home.dart';
import 'package:todo_pioneer_task1/Utils/colors.dart';
import 'package:todo_pioneer_task1/Utils/themeStyling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
  void initState() {
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context)=> Home())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250.0,
              height: 250.0,
              child: Image.asset("images/logo.png"),
            ),
            SizedBox(height: 20.0),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "To-Do List",
                    style: ThemeStyling.logoStyle.copyWith(
                      color: blueColor,
                    ),
                  ),
                  // TextSpan(
                  //   text: "Search",
                    // style: AppTheme.logoStyle,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
