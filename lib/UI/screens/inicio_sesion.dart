import 'package:aplicacion_riego/UI/screens/registro_usuario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class inicioSesion extends StatefulWidget {
  const inicioSesion({super.key});

  @override
  State<inicioSesion> createState() => _inicioSesionState();
}

class _inicioSesionState extends State<inicioSesion> {
  TextEditingController name = TextEditingController();
  TextEditingController clave = TextEditingController();

  validarDatos() async {
    try {
      //trae una instancia de la coleccion de la base de datos
      CollectionReference ref = FirebaseFirestore.instance.collection('users');
      QuerySnapshot usuario = await ref.get();

      //si hay documentos en la coleccion usuarios
      if (usuario.docs.length != 0) {
        for (var cursor in usuario.docs) {
          if (cursor.get('nombre') == name.text &&
              cursor.get('clave') == clave.text) {
            Navigator.pushNamed(context, 'paginaPrincipal');
            break;
          } else if (cursor.get('nombre') != name.text ||
              cursor.get('clave') != clave.text) {
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
                      'nombre o clave invalidos',
                      style: TextStyle(color: Colors.red),
                    ),
                  );
                });
          }
        }
      }
    } catch (e) {
      print('error' + e.toString());
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
                controller: name,
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
                  hintText: 'usuario',
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
                ),
                style: const TextStyle(color: Colors.green),
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
                    hintText: 'Clave',
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
              icon: const Icon(Icons.login),
              color: Colors.green,
              onPressed: () {
                validarDatos();
              },
            ),
          ),
          Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: IconButton(
                  icon: const Icon(Icons.person_add),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.pushNamed(context, 'registro');
                  })),
          // Container(
          //     margin: const EdgeInsets.all(20),
          //     alignment: Alignment.center,
          //     child: MaterialButton(
          //         child: Icon(FontAwesomeIcons.google),
          //         textColor: Colors.green,
          //         onPressed: () async {
          //           User? user = await AutenticacionGoogle.iniciarSesion(
          //               context: context);
          //           print(user?.displayName);
          //         })),
        ],
      ),
    );
  }
}
