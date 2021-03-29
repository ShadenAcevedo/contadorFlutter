import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State{
  
  // se declara una variable final cuando nunca se va a cambiar ese valor
  // se declara una instacia de TextStyle para que ese valor sea siempre que lo llamen
  final _estiloText = new TextStyle( fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar o header con titulo
      appBar: AppBar(
        title: Text('Probando con Stateful'),
        centerTitle: true,
      ),
      body: Center(
        // los componentes hijos los distribuye en forma de columna para que quede uno abajo del otro
        child: Column(
          // se centran los componentes
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks:', style: _estiloText ),
            Text('$_conteo', style: _estiloText ),
          ],
        )
      ),
      // para poder tener más botones, se recomienda hacerlo con una función
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      // se posicionan todos los botones al final
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton( child: Icon(Icons.exposure_zero),onPressed: _resetear),
        //separa el primer botón de los demás
        Expanded( child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove),onPressed: _sustraer),
        //se separan los botones con sizedBox
        SizedBox(width: 10),
        FloatingActionButton( child: Icon(Icons.add),onPressed: _agregar),
      ]
    );
  }

  void _agregar(){
    setState(() => _conteo++);
  }

  void _sustraer(){
    setState(() => _conteo--);
  }

  void _resetear(){
    setState(() => _conteo = 0);
  }
}
