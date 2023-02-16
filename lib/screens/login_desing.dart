import 'package:flutter/material.dart';
import 'package:layout_1/screens/scroll_desing.dart';

class Login_Desing extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      //stops: [0.5,0.5],
      colors: [
        Color(0xff5EE8C5),
        Color(0xff46b9d2),
      ],
    ),
  );
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  HomeStart createState() => HomeStart();
}

class HomeStart extends State<Home> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bienvenidos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Línea 2'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/user.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Email Usuario',
                      hintText: 'Digite email de usuario '),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Password Usuario',
                      hintText: 'Digite password de usuario '),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ElevatedButton(
                  onPressed: () {
                    print('botón presionado');
                  },
                  child: Text('Enviar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
