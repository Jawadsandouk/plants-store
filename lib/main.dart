import 'package:flutter/material.dart';
import 'package:plants_store/buy.dart';
import 'package:plants_store/delivery.dart';
import 'package:plants_store/delivery2.dart';
import 'package:plants_store/discover.dart';
import 'package:plants_store/indoor.dart';
import 'package:plants_store/profile.dart';
import 'package:plants_store/welcome.dart';
import 'package:plants_store/favourits.dart';
import 'package:plants_store/homepage.dart';
import 'package:plants_store/login.dart';
import 'package:plants_store/signup.dart';
import 'package:plants_store/cart.dart';

void main(List<String> args) {
  runApp(Plants());
}

class Plants extends StatelessWidget {
  const Plants({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
      routes: {
        '/first': (context) => Welcome(),
        '/home': (context) => Home(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/favorits': (context) => FavouritsP(),
        '/cart': (context) => CartP(),
        '/delivery': (context) => Delivery(),
        '/delivery2': (context) => Delivery2(),
        '/discover': (context) => DiscoverP(),
        '/indoor': (context) => Indoor(),
        '/buy': (context) => BuyP(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
