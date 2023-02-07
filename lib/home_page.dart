import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                     height: screenHeight * 0.75,
                    width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("https://media.timeout.com/images/105240195/image.jpg"),
                              fit: BoxFit.cover),
                        ),
                  ),
                ),
                // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
                Positioned(
                  top: 64,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ListView(
                    children: [
                      InfoLugar(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Details"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.grey[200],
                            ),
                          ),
                          Text("Walkthrough Flight Detail"),
                        ],
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return ItemActividad();
                          },
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Reservación en progreso..."))
                          );
                        },
                        child: Text("Start booking",
                        style: TextStyle(color: Colors.grey[200])),
                        color: Colors.red,
                      ),
                  
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
