// import 'dart:developer';

// import 'package:flutter/cupertino.dart';
// import 'package:mongo_dart/mongo_dart.dart';

// const url =
//     'mongodb+srv://brandon2003:baseriego@cluster0.rcxg8kx.mongodb.net/mydatabase?retryWrites=true&w=majority';
// const colleccion = 'usuarios';

// class MongoDB {
//   //metodos estaticos que solo son de la clase
//   static var bd, CollectionUsuarios;

//   static Future<dynamic> conectar() async {
//     bd = await Db.create(url);
//     await bd.open();
//     bd.inspect();
//     CollectionUsuarios = bd.collection(colleccion);
//   }

//   //metodo que trae los usuarios que se tengan los almacenados
//   static Future<List<Map<String, dynamic>>> obtenerUsuarios() async {
//     try {
//       final usuarios = await CollectionUsuarios.find().toList();
//       return usuarios;
//     } catch (e) {
//       return Future.value();
//     }
//   }

//   static insertar(Usuario, usuario) async {
//     await CollectionUsuarios.insertAll([usuario.toMap()]);
//   }

//   static actualizar(Usuario, usuario) async {
//     //variable que guarda al usuario localizado
//     var u = await CollectionUsuarios.findOne({'_id': usuario.id});
//     //el valor actual es remplazado por que se almacena en u
//     u['nombre'] = usuario.nombre;
//     u['apellidos'] = usuario.apellidos;
//     u['password'] = usuario.apellidos;
//     //guarda los cambios
//     await CollectionUsuarios.save(u);
//   }

//   static eliminar(Usuario, usuario) async {
//     await CollectionUsuarios.remove(where.id(usuario.id));
//   }
// }
