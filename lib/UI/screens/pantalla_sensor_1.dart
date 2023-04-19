import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class Sensor1 extends StatefulWidget {
  const Sensor1({Key? key}) : super(key: key);

  @override
  State<Sensor1> createState() => _Sensor1State();
}

class _Sensor1State extends State<Sensor1> {
  DatabaseReference dataBaseRef =
      FirebaseDatabase.instance.ref().child('dht11-1');

  // Widget listItem({required Map dht11}) {
  //   return Container(
  //     margin: const EdgeInsets.all(20),
  //     padding: const EdgeInsets.all(20),
  //     child: Column(
  //       children: [
  //         Text(
  //           dht11['humedad'],
  //           style: TextStyle(color: Colors.black),
  //         ),
  //         Text(
  //           dht11['temperatura'],
  //           style: TextStyle(color: Colors.black),
  //         )
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Dht11-1',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 200),
        child: FirebaseAnimatedList(
            query: dataBaseRef,
            itemBuilder: (context, snapshot, animation, index) {
              return ListTile(
                title: Text('Datos en tiempo real:'),
                trailing: Icon(
                  Icons.podcasts,
                  color: Colors.green,
                ),
                subtitle: Text(snapshot.value.toString()),
              );
            }),
      ),
    );
  }
}
