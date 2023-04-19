import 'package:aplicacion_riego/UI/screens/comentarios.dart';
import 'package:aplicacion_riego/UI/views/view_sensores.dart';
import 'package:aplicacion_riego/UI/views/home_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //indice de la vista inicial
  int selectIndex = 0;
  //estas son las 2 vistas que se quieren mostrar
  final screen = [
    homeView(), //=>ESTA ES LA VISTA PRINCIPAL, POR LA QUE SERA EL INDICE 0
    configuracionView(),
    Comentarios() //=>ESTA ES EL INDICE 1
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        //funciona para que al cambiar la vista, el valor no se reinicie
        //cabe recalcar que solo es la vista que cambia y no la pantalla
        //la vista se ejecuta en este body y en esta pantalla HomeScreen
        index: selectIndex,
        children: screen,
      ),
      //el bottomNavigation se pone en la pantalla principal
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //el codigo de abajo funcion par que cuando se de click en un icono la vista cambie
        currentIndex: selectIndex,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            label: 'configuracion de sensores',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment,
              color: Colors.green,
            ),
            label: 'Comentarios',
          ),
        ],
      ),
    );
  }
}
