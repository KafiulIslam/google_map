import 'package:flutter/material.dart';
import 'package:flutter_gmaps/directions_model.dart';
import 'package:flutter_gmaps/directions_repository.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'map_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MapScreen(),
    );
  }
}

