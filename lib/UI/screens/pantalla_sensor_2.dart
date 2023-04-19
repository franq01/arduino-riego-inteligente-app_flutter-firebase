import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class Humedad extends StatefulWidget {
  const Humedad({Key? key}) : super(key: key);

  @override
  State<Humedad> createState() => _Humedad();
}

class _Humedad extends State<Humedad> {
  DatabaseReference dataBaseRef =
      FirebaseDatabase.instance.ref().child('FC28-1');

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
          'FC28-1',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 200),
        child: FirebaseAnimatedList(
            query: dataBaseRef,
            itemBuilder: (context, snapshot, animation, index) {
              return ListTile(
                title: Text('Humedad:'),
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
