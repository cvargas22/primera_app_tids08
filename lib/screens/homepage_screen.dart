import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int contador = 0;

  void resetear(){
    setState(() {
       contador = 0;
    });
  }
  void disminuir(){
    if(contador > 0){
      contador--;
    }
    setState(() {
      
    });
  }
  void aumentar(){
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mi Primera App',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Usted ha presionado el botón esta cantidad:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$contador',
              style: TextStyle(
                fontSize: 30.0
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: resetear,
            child: Icon(
              Icons.exposure_zero
            ),
          ),
          Expanded(child: SizedBox()),
          FloatingActionButton(
            onPressed: disminuir, //funcion anonima vacia,
            child: Icon(
              Icons.remove
            ),
          ),
          FloatingActionButton(
            onPressed: (){
              aumentar();
            }, //funcion anonima vacia,
            child: Icon(
              Icons.add
            ),
          ),
        ],
      ),
    );
  }
}