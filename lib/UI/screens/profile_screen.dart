import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

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
                  'Perfil',
                  style: TextStyle(color: Colors.black),
                )
              ],
            )),
        body: ListView(
          children: [
            Container(
                margin: const EdgeInsets.all(30),
                child: const CircleAvatar(
                  backgroundColor: Colors.green,
                  maxRadius: 60,
                  child: Icon(
                    Icons.person,
                  ),
                )),
            Container(
              margin: const EdgeInsets.all(15),
              child: ListTile(
                  title: const Text(
                    'nombre de usuario',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: const Text(
                    'UTT',
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: const Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'editar');
                    },
                  )),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: ListTile(
                  title: Text(
                    'Ubicacion',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    'El carmen Xalpatlahuaya',
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.gps_fixed,
                    color: Colors.green,
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'editar');
                    },
                  )),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: ListTile(
                  title: Text(
                    'Numero de telefono',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    '2411035238',
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'editar');
                    },
                  )),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: ListTile(
                  title: Text(
                    'Correo electronico',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    'uttlaxcala@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'editar');
                    },
                  )),
            )
          ],
        ));
  }
}
