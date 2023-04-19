import 'package:flutter/material.dart';

class Imagenes extends StatelessWidget {
  final String img;
  const Imagenes({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 50.0,
      margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
      decoration: BoxDecoration(
          //funciona para decorar como una caja el container
          image: DecorationImage(
            //da estilos a la imagenes
            fit: BoxFit
                .cover, //funciona para que la imagen cubra todo el contenedor padre
            image: AssetImage(img),
          ),
          //le da un borde circular de 20.0 al contenedor padre
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          //propiedad que funciona para darle sombra al contenedor
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 7.0))
          ]),
    );
  }
}
