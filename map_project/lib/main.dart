import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(new Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_screen(),
    );
  }
}

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  String currentAddress = 'My Address';
  late Position currentposition;

   


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("GeoLocation"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                currentAddress,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text("Address"),
              Text("latitude"),
              Text("longitude"),
              TextButton(onPressed: () {}, child: Text('Locate Me')),
            ],
          ),
        ),
      ),
    );
  }
}
