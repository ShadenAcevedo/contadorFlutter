import 'package:flutter/material.dart';
import 'package:contador/src/pages/contador_page.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(context){

    return MaterialApp(
      // se oculta el banner que sale
      debugShowCheckedModeBanner: false,
      // se centra todo lo que haya dentro de home
      home: Center(
        // se llama el componente hijo ContadorPage
        child: ContadorPage()
      )
    );
  }
}