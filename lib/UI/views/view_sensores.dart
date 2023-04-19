import 'package:aplicacion_riego/UI/views/list_tile_sensores.dart';
import 'package:flutter/material.dart';

class configuracionView extends StatelessWidget {
  const configuracionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Sensores',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.login_rounded,
              color: Colors.green,
            ),
            tooltip: 'Cerrar sesion',
            onPressed: () {
              Navigator.pushNamed(context, 'inicio');
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            datosSensores(),

            Container(
              margin: const EdgeInsets.only(top: 40),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('¿Quieres activar el riego de manera manual?')
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: const Expanded(
                child: Text(
                  'El sistema de riego esta programado para que cuando los sensores manden cierta cantidad especifica de humedad o temperatura, este se active automaticamente,pero tambien se tiene la opcion de activarlo cuando el usuario lo requiera.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            //pongo un contenedor al boton para poder separarlo del texto
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //se centra el boton horizontalmente
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Text(
                      'Activar ahora',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.green,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
