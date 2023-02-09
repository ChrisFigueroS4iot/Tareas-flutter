import 'package:flutter/material.dart';


class ItemActividad extends StatelessWidget {
    final String day;
    final String place;
    final String image;

  ItemActividad({super.key, required this.day, required this.place,required  this.image});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover
              )
            ),
          ),
          Text(day, style: TextStyle(fontSize: 11)),
          Text(place),
        ],
      ),
    );
  }
}
