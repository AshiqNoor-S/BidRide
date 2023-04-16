import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home/home_page.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1300),() {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "BidRide",
            style: TextStyle(fontSize: 45,fontWeight: FontWeight.w600,color: Colors.deepPurple,
            
            ),
          ),
        ),
      ),
    );
  }
}