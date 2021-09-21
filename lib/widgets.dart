import 'package:flutter/material.dart';
import 'first.dart';
class custCont1 extends StatefulWidget {
  custCont1({required this.colour,required this.ch1});
  Color colour;
  Widget ch1;

  @override
  _custCont1State createState() => _custCont1State();
}

class _custCont1State extends State<custCont1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.colour,
      ),
      child: widget.ch1,
    );
  }
}

class iconWidgets extends StatefulWidget {
  iconWidgets({required this.text,required this.icon,required this.iconc});
  String text;
  IconData icon;
  Color iconc;

  @override
  _iconWidgetsState createState() => _iconWidgetsState();
}

class _iconWidgetsState extends State<iconWidgets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(widget.icon,size: 90,color: widget.iconc,),
        SizedBox(height: 15,),
        Text(widget.text,style: TextStyle(fontWeight: FontWeight.bold,color: widget.iconc,fontSize: 20),)
      ],
    );
  }
}

