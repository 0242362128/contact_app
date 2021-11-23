import 'package:flutter/material.dart';
class Contactview extends StatelessWidget {
  const Contactview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(backgroundColor: Colors.white,
  elevation: 0,
  centerTitle: true,title: const
        Text(' Contacts',
       style: TextStyle( color: Colors.black,
        fontSize: 25.0,
        fontWeight: FontWeight.w600),
        ),
        actions:const [Icon(Icons.more_vert,color: Colors.black)],),
      
      
    );
  }
}