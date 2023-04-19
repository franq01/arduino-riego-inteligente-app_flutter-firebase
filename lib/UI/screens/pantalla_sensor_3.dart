import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class Aire extends StatefulWidget {
  const Aire({Key? key}) : super(key: key);

  @override
  State<Aire> createState() => _Aire();
}

class _Aire extends State<Aire> {
  DatabaseReference dataBaseRef =
      FirebaseDatabase.instance.ref().child('caudalimetro');

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
          'Caudalimetro',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 200),
        child: FirebaseAnimatedList(
            query: dataBaseRef,
            itemBuilder: (context, snapshot, animation, index) {
              return ListTile(
                title: Text('Litros por hora:'),
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
