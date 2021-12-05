// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unused_field, prefer_const_constructors_in_immutables, unused_local_variable

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    /* Seccion Titulo */
    final Widget _secTitulo = Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
        children: [
          /* Columna 1*/
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Playa tropical',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'En algún lugar del mundo',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /* Columna 2*/
          Icon(
            Icons.star,
            color: Colors.amber[500],
          ),
          /* Columna 3*/
          Text('77'),
        ],
      ),
    );

    /* Funcion Crear Botones Columna */
    Column _crearButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    /* Seccion Botones */
    final Widget _secBotones = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _crearButtonColumn(color, Icons.call, 'LLAMAR'),
        _crearButtonColumn(color, Icons.near_me, 'INDICACIONES'),
        _crearButtonColumn(color, Icons.share, 'COMPARTIR'),
      ],
    );

    /* Seccion Texto */
    final Widget _secTexto = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Tempor dolore eu eiusmod qui veniam aute culpa consectetur fugiat'
        'quis exercitation id do cillum. Aute sunt labore pariatur sint magna Lorem.'
        'Cupidatat culpa ut reprehenderit nostrud aliquip proident proident'
        'sit proident eiusmod culpa. Sit aliqua magna Lorem pariatur officia est ullamco'
        'sunt aliqua consequat.',
        softWrap: true,
      ),
    );

    /* boton Me Gusta */
    final Widget _botonMeGusta = FloatingActionButton.extended(
      onPressed: () {
        final snackBar = SnackBar(
          backgroundColor: Colors.indigo,
          content: Text("Gracias por tu voto!!!"),
          action: SnackBarAction(
            textColor: Colors.white,
            label: 'Cerrar',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      label: const Text('Me gusta'),
      icon: const Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    );

    /* Drawer */
    final Widget _drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Text(
              'Cabecera del Drawer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Mensajes'),
            trailing: Icon(Icons.chevron_right_rounded),
            onTap: () {
              Navigator.pop(context);
              final snackBar = SnackBar(
                content: Text("Mensajes..."),
                action: SnackBarAction(
                  label: 'Ok',
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Perfil'),
            trailing: Icon(Icons.chevron_right_rounded),
            onTap: () {
              Navigator.pop(context);
              final snackBar = SnackBar(
                content: Text("Perfil..."),
                action: SnackBarAction(
                  label: 'Ok',
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuración'),
            trailing: Icon(Icons.chevron_right_rounded),
            onTap: () {
              Navigator.pop(context);
              final snackBar = SnackBar(
                content: Text("Configuraciones..."),
                action: SnackBarAction(
                  label: 'Ok',
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );

    /* App Scaffold */
    return Scaffold(
      appBar: AppBar(
        title: Text('G57 - Tarea 03'),
      ),
      drawer: _drawer,
      body: ListView(
        children: [
          Image.asset(
            'assets/images/playa.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          _secTitulo,
          _secBotones,
          _secTexto,
        ],
      ),
      floatingActionButton: _botonMeGusta,
    );
  }
}
