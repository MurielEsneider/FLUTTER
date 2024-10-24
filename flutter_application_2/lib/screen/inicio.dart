import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 0, 148, 79),
        backgroundColor: Colors.white,
        title: Text("E-comerce"),
        ),
        body: ListView(
          padding: EdgeInsets.all(6),
          children: [
            Image.network(
              "https://cdn.motor1.com/images/mgl/1ZQwYp/s3/hennessey-chevrolet-camaro-zl1-exorcist-final-edition.jpg",
              width: 700,
              height: 200,  
            ),
           SizedBox(height: 16),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:[
            Text(
              "Camaro ZL1",
              style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              Icon(Icons.favorite_border),
           ],
           ),
        SizedBox(height: 8),
          Text(
            "Descuento",style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          SizedBox(height: 8),
            Text(
              "Descuento",style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          SizedBox(height: 8),
          Text(
            "Descuento",
            style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            SizedBox(height: 8),

      ],
    ),  
  );
}
}