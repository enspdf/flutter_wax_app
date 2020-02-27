import 'package:flutter/material.dart';
import 'package:flutter_wax_app/providers/settings_provider.dart';
import 'package:flutter_wax_app/screens/home.dart';
import 'package:flutter_wax_app/services/firestore_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final FirestoreService _db = FirestoreService();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => SettingsProvider(),
        ),
        StreamProvider(
          create: (BuildContext context) => _db.getReports(),
        ),
      ],
      child: MaterialApp(
        title: "Wax App",
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrangeAccent,
        ),
        home: Home(),
      ),
    );
  }
}
