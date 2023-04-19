import 'package:aplicacion_riego/UI/views/cards_plantas.dart';
import 'package:aplicacion_riego/UI/views/imagenes.dart';
import 'package:flutter/material.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Inicio', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.logout_rounded,
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
        body: ListView(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text(
                          '¡Recomendaciones sobre plantas!',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )),
            const Expanded(
                child: Imagenes(
              img: 'assets/pasto.jpg',
            )),
            const Plantas(
              namePlanta: 'Pasto',
              descripcion:
                  'El pasto es una especie de planta, que pertenece a la familida de las gramineas, que se desarrolla o adapta a cualquier tipo de suelo, formando una vegetacion muy densa, que se utiliza principalmnte para alimentar y engordar a los animales.',
              tiempoRiego: 'Regar 15 min',
            ),
            const Expanded(
                child: Imagenes(
              img: 'assets/arbol.jpg',
            )),
            const Plantas(
              namePlanta: 'Arbol',
              descripcion:
                  'Un arbol es una planta, de tallo leñoso, que se ramifica a cierta altura del suelo. el termino hace referencia habitualmente a aquellas plantas cuya altura supera un determinado limite en la madurez, esto cambia segun las fuentes: 2 metros.',
              tiempoRiego: 'Regar 10 min',
            ),
            const Expanded(
                child: Imagenes(
              img: 'assets/girasol.jpg',
            )),
            const Plantas(
              namePlanta: 'Girasol',
              descripcion:
                  'Es una planta herbacea de la familia asteracea, de nombre cientifico helianthus annuus, que se caracteriza por tener flores amarillas, frutos comestibles y tallos robustos y erguidos, el girsaol recibe este nombre gracias a sus propiedades.',
              tiempoRiego: 'Regar 4 min',
            ),
            const Expanded(
                child: Imagenes(
              img: 'assets/flores.jpg',
            )),
            const Plantas(
              namePlanta: 'Flores',
              descripcion:
                  'Una flor es la parte de la planta encargada de la reproduccion. Su estructura contempla un tallo corto y un cumulo de hojas modificadas que protege a las celulas sexuales y asegura la formacion de nuevas semillas. ',
              tiempoRiego: 'Regar 5 min',
            )
          ],
        ));
  }
}
