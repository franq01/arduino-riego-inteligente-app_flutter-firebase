import 'package:flutter/material.dart';

class editarPerfil extends StatelessWidget {
  final newUser = TextEditingController();
  final newDireccion = TextEditingController();
  final newTelefono = TextEditingController();
  final newCorreo = TextEditingController();
  String nuevoUsuario = '';
  String nuevaDireccion = '';
  String nuevoTelefono = '';
  String nuevoCorreo = '';
  editarPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Editar',
                style: TextStyle(color: Colors.black),
              )
            ],
          )),
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.all(15),
              child: TextField(
                controller: newUser,
                decoration: InputDecoration(
                    hintText: 'nuevo nombre de usuario',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(
                      Icons.new_label,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              )),
          Container(
              margin: const EdgeInsets.all(15),
              child: TextField(
                controller: newDireccion,
                decoration: InputDecoration(
                    hintText: 'nueva direccion',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(
                      Icons.new_label,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              )),
          Container(
              margin: const EdgeInsets.all(15),
              child: TextField(
                controller: newTelefono,
                decoration: InputDecoration(
                    hintText: 'nuevo numero de telefono',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(
                      Icons.new_label,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              )),
          Container(
              margin: const EdgeInsets.all(15),
              child: TextField(
                controller: newCorreo,
                decoration: InputDecoration(
                    hintText: 'nuevo correo electronico',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(
                      Icons.new_label,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(15),
                  child: IconButton(
                    iconSize: 40,
                    icon: const Icon(
                      Icons.save,
                    ),
                    color: Colors.green,
                    onPressed: () {
                      nuevoUsuario = newUser.text;
                      nuevaDireccion = newDireccion.text;
                      nuevoTelefono = newTelefono.text;
                      nuevoCorreo = newCorreo.text;

                      if (nuevoUsuario == '' &&
                          nuevaDireccion == '' &&
                          nuevoTelefono == '' &&
                          nuevoCorreo == '') {
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
                                  'Rellena todos los campos',
                                  style: TextStyle(color: Colors.red),
                                ),
                              );
                            });
                      }
                    },
                  ))
            ],
          )
        ],
      ),
    );
  }
}
