import 'package:flutter/material.dart';

// un statefullwidget consta de el statefulwidget como tal y de su estado

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
  
}

// estado del statefulwidget
class _ContadorPageState extends State<ContadorPage>{

   
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 10;

   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps:', style: _estiloTexto),
            Text( '$_conteo' , style: _estiloTexto) 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          setState(() {
              _conteo++;
          });

        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}