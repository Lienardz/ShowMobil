import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sewa_mobil/constants.dart';
import 'package:sewa_mobil/routs.dart';
import 'package:sewa_mobil/screens/splashscreen.dart';
import 'package:sewa_mobil/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: Splashscreen(),
      initialRoute: Splashscreen.routeName,
      routes: routes,
    );
  }
}
