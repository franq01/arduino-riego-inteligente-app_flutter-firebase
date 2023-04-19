// import 'package:aplicacion_riego/Resources/connecting_data_base.dart';
import 'package:aplicacion_riego/UI/screens/comentarios.dart';
import 'package:aplicacion_riego/UI/screens/edit_profile.dart';
import 'package:aplicacion_riego/UI/screens/inicio_sesion.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_principal.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_sensor_1.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_sensor_2.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_sensor_3.dart';
import 'package:aplicacion_riego/UI/screens/pantalla_sensor_dht112.dart';
import 'package:aplicacion_riego/UI/screens/profile_screen.dart';
import 'package:aplicacion_riego/UI/screens/registro_usuario.dart';
import 'package:aplicacion_riego/UI/views/view_sensores.dart';
import 'package:aplicacion_riego/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'UI/screens/humedad2.dart';
import 'UI/screens/humedad3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'inicio',
      routes: {
        'inicio': (context) => const inicioSesion(),
        'paginaPrincipal': (context) => const HomeScreen(),
        'viewPerfil': (context) => const Perfil(),
        'editar': (context) => editarPerfil(),
        'registro': (context) => const Registrar(),
        'sensores': (contex) => const configuracionView(),
        'grafica_dht11': (context) => const Sensor1(),
        'grafica2_dht112': (context) => const SensorDht112(),
        'grafica_humedad': (context) => const Humedad(),
        'grafica_humedad2': (context) => const Humedad2(),
        'grafica_humedad3': (context) => const Humedad3(),
        'grafica_aire': (context) => const Aire(),
        'comentarios': (context) => Comentarios(),
      },
    );
  }
}
