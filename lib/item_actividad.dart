import 'package:flutter/material.dart';


final List<Map<String, String>> _listElements = [
    {
      "day": "Day 1",
      "place": "La playa",
      "image": "https://i.imgur.com/noNCN3V.jpg",
    },
    {
      "day": "Day 2",
      "place": "El bosque",
      "image": "https://i.imgur.com/noNCN3V.jpg",
    },
    {
      "day": "Day 3",
      "place": "El desierto",
      "image": "https://i.imgur.com/noNCN3V.jpg",
    },
  ];

class ItemActividad extends StatelessWidget {
  ItemActividad({super.key});

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
            color: Colors.purple,
          ),
          Text("Day 1", style: TextStyle(fontSize: 11)),
          Text("Bali mountains"),
        ],
      ),
    );
  }
}
