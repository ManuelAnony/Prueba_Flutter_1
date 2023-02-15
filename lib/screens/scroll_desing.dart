import 'package:flutter/material.dart';
import 'package:layout_1/screens/basic_desing.dart';



class ScrollScreen extends StatelessWidget {

  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5,0.5],
      colors: [
        Color(0xff5EE8C5),
        Color(0xff46b9d2),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          decoration: boxDecoration,
          child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
      
          ],
        ),
        ),
    );

  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         // background Image
        Background(),

        //Main Content - Column
        MainContent(),
     ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle( fontSize: 55, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down_rounded, size: 100, color: Colors.white,),

      ],
             ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff46b9d2),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage('assets/scroll-1.png'),),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff46b9d2),
      child: Center(
        child: TextButton(

            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text('Bienvenido', style: TextStyle( color: Colors.white, fontSize: 30)),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff0098f4),
              shape: StadiumBorder()
            ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => BasicDesingScreen()));
          },
        ),
    ),
    );
  }
}

