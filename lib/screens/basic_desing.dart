import 'package:flutter/material.dart';
import 'package:layout_1/screens/scroll_desing.dart';

class BasicDesingScreen extends StatelessWidget{
  const BasicDesingScreen({super.key});

      @override
          Widget build(BuildContext context) {
            return Scaffold(
              body: Column(
                children: [
                  // Imagen
                      Stack(
                        children: [
                          Image_1(),

                          volver()
                        ],
                      ),

                  // Titulo
                      Title(),
                  // Button Section
                  ButtonSection(),

                  //Description
                  //Description(),

                  //Descripcion 2
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
                softWrap: true),
          ),
        ],
              ),
            );
          }

}

class volver extends StatelessWidget {
  const volver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 60),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios_new, color: Colors.blue,),
        onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ScrollScreen()));
      },),

      );

  }
}

class Image_1 extends StatelessWidget {
  const Image_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

        child: Image(image: AssetImage('assets/landscape.jpg')));
  }
}


  //Title
  class Title extends StatelessWidget {
    const Title({
      super.key,
    });

    @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 45, vertical: 25),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment., Varia el aspecto
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Oeschine Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
                Text('kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
              ],
            ),
            Expanded(child: Container()),

            Icon(Icons.star, color: Colors.red,),
            Text('41'),
          ],
        ),
      );
    }
  }

  // Button Section
  class ButtonSection extends StatelessWidget {
    const ButtonSection({
      super.key,
    });

    @override
    Widget build(BuildContext context) {
      return  Container(
        margin: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              CustomButton(icon: Icons.call, text: 'Call',),
              CustomButton(icon: Icons.near_me, text: 'Route',),
              CustomButton(icon: Icons.share, text: 'Share',),
            ],

        ),
      );
    }
  }

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon( this.icon, color: Colors.blue,),
        Text( this.text, style: TextStyle(color: Colors.lightBlue),),
      ],
    );
  }
}

  //Description
  /*class Description extends StatelessWidget {
    const Description({
      super.key,
    });

    @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 45, vertical: 15),
        child: Column(

          children: [
            Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,),
          ],
        ),
      );
    }
  }*/
//Description
