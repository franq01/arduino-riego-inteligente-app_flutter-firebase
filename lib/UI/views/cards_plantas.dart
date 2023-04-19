import 'package:flutter/material.dart';

class Plantas extends StatelessWidget {
  final String namePlanta;
  final String descripcion;
  final String tiempoRiego;
  const Plantas(
      {super.key,
      required this.namePlanta,
      required this.descripcion,
      required this.tiempoRiego});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 10,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text(namePlanta),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                descripcion,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.schedule,
                    color: Colors.green,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Text(tiempoRiego),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
