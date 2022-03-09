import 'package:flutter/material.dart';

class usercards extends StatelessWidget {
  usercards({required this.CardImage, required this.CardText, required this.onPress});

  final Widget CardImage;
  final Function onPress;
  final String CardText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
      onPress(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          boxShadow:[
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 7, //spread radius
              blurRadius: 7, // blur radius
              offset: Offset(0,2),

            ),
            //you can set more BoxShadow() here
          ],
        ),
        child: Column(
          children: [CardImage, Text(CardText)],
        ),
        margin: const EdgeInsets.all(15.0),

      ),
    );
  }
}
