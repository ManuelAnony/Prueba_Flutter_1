import 'package:flutter/material.dart';
import 'package:layout_1/screens/basic_desing.dart';
import 'package:layout_1/screens/scroll_desing.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scrollscreen',
      routes: {
        'basic_desing':  ( _ ) => BasicDesingScreen(),
        'scrollscreen': ( _ ) => ScrollScreen(),
      },
    );
  }
}


