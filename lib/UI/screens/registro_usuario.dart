// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Registrar extends StatefulWidget {
  const Registrar({super.key});

  @override
  State<Registrar> createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
  TextEditingController nombre = TextEditingController();
  TextEditingController direccion = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController gmail = TextEditingController();
  TextEditingController clave = TextEditingController();
  //instancia de firebase
  final firebase = FirebaseFirestore.instance;

//funcion asincrona de registrar usuario en la base de datos
  registroUsuario() async {
    try {
      //si existe la coleccion users los documentos
      //si no existe se va a crear con ese nombre
      await firebase.collection('users').doc().set({
        'nombre': nombre.text,
        'direccion': direccion.text,
        'telefono': telefono.text,
        'gmail': gmail.text,
        'clave': clave.text,
      });
    } catch (e) {
      print('error....' + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(30),
                  child: const CircleAvatar(
                    maxRadius: 60,
                    backgroundImage: AssetImage('assets/logo.png'),
                  ))
            ],
          ),
          Container(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: nombre,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 3, 83, 6), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Nombre',
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
                ),
                style: const TextStyle(color: Colors.green),
              )),
          Container(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: direccion,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.abc_rounded,
                      color: Colors.green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 3, 83, 6), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Direccion',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
              )),
          Container(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: telefono,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.block,
                      color: Colors.green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 3, 83, 6), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'ingresa un numero de telefono',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
              )),
          Container(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: gmail,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.block,
                      color: Colors.green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 3, 83, 6), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'ingresa tu gmail',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
              )),
          Container(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: clave,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.block,
                      color: Colors.green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 3, 83, 6), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'ingresa tu clave unica',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
                obscureText: true,
              )),
          Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: IconButton(
                  icon: const Icon(Icons.login_outlined),
                  color: Colors.green,
                  onPressed: () {
                    if (nombre.text == '' ||
                        direccion.text == '' ||
                        telefono.text == '' ||
                        gmail.text == '' ||
                        clave.text == '') {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text(
                                'Ocurrio un error',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'rbold',
                                    color: Colors.black),
                              ),
                              content: Text(
                                'Rellena todos los campos que se piden',
                                style: TextStyle(color: Colors.red),
                              ),
                            );
                          });
                    } else {
                      registroUsuario();
                      Navigator.pushNamed(context, 'inicio');
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text(
                                'Exitoso',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'rbold',
                                    color: Colors.black),
                              ),
                              content: Text(
                                'Registro correctamente',
                                style: TextStyle(color: Colors.green),
                              ),
                            );
                          });

                      nombre.clear();
                      direccion.clear();
                      telefono.clear();
                      gmail.clear();
                      clave.clear();
                    }
                  })),
        ],
      ),
    );
  }
}
