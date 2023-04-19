import 'package:flutter/material.dart';

class Comentarios extends StatelessWidget {
  final gmail = TextEditingController();
  final msj = TextEditingController();
  String correo = '';
  String mensaje = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Comentarios',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: const Text(
                  '¡Envia tus comentarios!',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: TextField(
                    controller: gmail,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.green,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 3, 83, 6), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Tu correo electronico',
                      hintStyle:
                          const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    style: const TextStyle(color: Colors.green),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: TextField(
                    controller: msj,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.message,
                        color: Colors.green,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 3, 83, 6), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: '¿Que te parecio esta app?',
                      hintStyle:
                          const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    style: const TextStyle(color: Colors.green),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 70),
                  child: IconButton(
                      icon: const Icon(Icons.send),
                      color: Colors.green,
                      onPressed: () {
                        correo = gmail.text;
                        mensaje = msj.text;
                        if (correo == '' || mensaje == '') {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title: Text(
                                    'Error',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 18),
                                  ),
                                  content: Text(
                                    'Rellena los campos requeridos',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                );
                              });
                          gmail.clear();
                          msj.clear();
                        } else if (correo.length <= 10 || mensaje.length <= 3) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title: Text(
                                    'Error',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 18),
                                  ),
                                  content: Text(
                                    '¡Algun dato no esta en el formato correcto!',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                );
                              });
                          gmail.clear();
                          msj.clear();
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title: Text(
                                    'Se envio tu comentario',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  ),
                                  content: Text(
                                    'Tu comentario es fundamental para poder seguir mejorando esta aplicacion.',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                );
                              });
                          gmail.clear();
                          msj.clear();
                        }
                      }))
            ],
          )
        ],
      ),
    );
  }
}
